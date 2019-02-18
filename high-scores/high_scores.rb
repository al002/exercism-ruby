class HighScores
  attr_reader :scores

  def initialize(scores)
    @scores = scores
  end

  def latest
    scores.pop
  end

  def personal_best
    scores.max
  end

  def personal_top_three
    scores.sort { |a, b| b <=> a }.slice(0, 3)
  end
end
