class Place < ActiveRecord::Base
  belongs_to :user
  geocoded_by :address
  after_validation :geocode
  validates :name, presence: true, uniqueness: true, length: {within: 3..50 }
  validates :address, presence: true, length: {minimum: 10 }
  validates :description, presence: true, uniqueness: true, length: {minimum: 20 }
end
