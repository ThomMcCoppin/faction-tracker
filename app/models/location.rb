class Location < ApplicationRecord
  belongs_to :faction

  validates :name, presence: true
  validates :position, presence: true
  validates :purpose, presence: true
  validates :secret, presence: true 
end
