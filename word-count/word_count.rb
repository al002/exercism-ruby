class Phrase
  attr_reader :phrase, :words

  def initialize(phrase)
    @phrase = phrase.downcase
    @words = @phrase.scan(/\b[\w']+\b/)
  end

  def word_count
    count = Hash.new(0)
    words.each do |word|
      count[word] += 1
    end

    count
  end
end
