class Artifact < ApplicationRecord
  belongs_to :faction

  validates :name, presence: true
  validates :magic, presence: true
  validates :description, presence: true
  validates :effects, presence: true 
end
