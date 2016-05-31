class Place < ActiveRecord::Base
  belongs_to :user
  validates :name, length: { minimum: 3}
  validates :description, :address, presence: true
end