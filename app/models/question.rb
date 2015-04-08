class Question < ActiveRecord::Base
  has_many :answers

  def self.available
    pluck(:id)
  end

  def next
    self.class.where("id > ?", id).first
  end

  def first?
    self == self.class.first
  end

  def last?
    self.next.nil?
  end
end