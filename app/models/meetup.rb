class Meetup < ActiveRecord::Base
  belongs_to :user

  validates :title, presence: true, length: { maximum: 20 }
  validates :description, presence: true, length: { maximum: 250 }
  validates :date, presence: true
  validates :place, presence: true
  validates :capacity, presence: true, numericality: { only_integer: true, greater_than: 0 }



end
