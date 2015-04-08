class Answer < ActiveRecord::Base
  belongs_to :question

  def self.calculate_weights
    sum(:weighted_value)
  end
end