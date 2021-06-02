# frozen_string_literal: true

# Creates phrases
class Phrase
  def initialize(word)
    @word = word.downcase.split(/[^'\w]/)
  end

  def word_count
    result = {}
    @word.each_with_index do |el, i|
      @word[i] = el.gsub(/^'|'$/, '')
      el = @word[i]
      result[el] = @word.count(el) unless result[el] || el.empty?
    end
    result
  end
end
