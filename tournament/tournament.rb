module TournamentHelper
  HEADER = "Team                           | MP |  W |  D |  L |  P\n"
  POINTS = {
    'win' => 3,
    'loss' => 0,
    'draw' => 1
  }.freeze

  RESULTS_INV = {
    'win' => 'loss',
    'loss' => 'win',
    'draw' => 'draw'
  }.freeze

  def parse_input(line)
    data = line.split(";")
    team = data[0] 
    other_team = data[1]
    result = data[2].chomp
    [team, other_team, result]
  end

  def fill_first_team!(table, team, result)
    table[team][:mp] += 1
    table[team][result] += 1
    table[team][:p] += POINTS[result]
  end

  def fill_second_team!(table, other_team, result)
    table[other_team][:mp] += 1
    table[other_team][RESULTS_INV[result]] += 1
    table[other_team][:p] += POINTS[RESULTS_INV[result]]
  end

  def print_results(results)
    string = HEADER
    Hash[results.sort].sort_by { |k,v| -v[:p] }.each do |team, info|
      mp = info[:mp]
      w = info['win'] || 0
      d = info['draw'] || 0
      l = info['loss'] || 0
      points = info[:p] || 0
      string += "#{team.ljust(30)} |  #{mp} |  #{w} |  #{d} |  #{l} |  #{points}\n"
    end
    string
  end

  def populate_table!(table, team, other_team, result)
    unless table[team]
      table[team] = {}
      table[team][:mp] = 0
      table[team][:p] = 0
    end
    table[team][result] ||= 0

    unless table[other_team]
      table[other_team] = {}
      table[other_team][:mp] = 0
      table[other_team][:p] = 0
    end
    table[other_team][RESULTS_INV[result]] ||= 0

    fill_first_team!(table, team, result)
    fill_second_team!(table, other_team, result)
  end
end

class Tournament
  extend TournamentHelper
  def self.tally(input)
    return TournamentHelper::HEADER unless input.match(/\w+/)

    table = {}
    input.each_line do |line|
      team, other_team, result = parse_input(line)
      populate_table!(table, team, other_team, result)
    end
    print_results(table)
  end
end
