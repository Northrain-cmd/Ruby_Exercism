# frozen_string_literal: true

# Handles scores and records
class HighScores
  attr_accessor :scores

  def initialize(scores)
    @scores = scores
  end

  def latest
    @scores.last
  end

  def personal_best
    @scores.max
  end

  def personal_top_three
    @scores.sort.last(3).reverse
  end

  def latest_is_personal_best?
    latest == personal_best
  end
end
