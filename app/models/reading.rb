class Reading < ApplicationRecord
  belongs_to :user
  validates :level, presence: true, level: true
  validates_length_of :level, maximum: 1
  attr_accessor :reading_count

  scope :reading_count_of_day, -> { where('created_at > ?', Time.current.beginning_of_day).count }
end
