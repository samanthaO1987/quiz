class User < ActiveRecord::Base
  has_many :surveys
  has_many :answers, through: :surveys

  scope :with_score, -> { where("score is not null") }
  scope :ordered, -> { order('score desc') }

  def calculate_score
    answers.calculate_weights
  end
end
