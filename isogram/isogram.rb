class Isogram
  def self.isogram?(phrase)
    p = phrase.gsub(/[\s*-]/, '').downcase
    words = p.split('')

    return words.uniq === words
  end
end
