# frozen_string_literal: true

# Implements the #abbreviate method
class Acronym
  def self.abbreviate(string)
    string.upcase
          .split(/\W/)
          .map!(&:chr)
          .join
  end
end
