class Place < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  geocoded_by :address
  after_validation :geocode
  
  validates :name, length: { minimum: 3}
  validates :description, :address, presence: true
end