class HighScores
  attr_reader :scores

  def initialize(scores)
    @scores = scores
  end
  
  def latest
    @latest_score ||= scores.last
  end

  def personal_best
    @best_score ||= scores.max
  end

  def personal_top_three
    @top_three_scores ||= scores.max(3)
  end

  def latest_is_personal_best?
    latest == personal_best
  end
end