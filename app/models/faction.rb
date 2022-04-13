class Faction < ApplicationRecord
  has_many :npcs, dependent: :destroy
  has_many :artifacts, dependent: :destroy
  has_many :locations, dependent: :destroy
  # has_many :ranks, dependent: :destroy


  validates :title, presence: true
  validates :description, presence: true
  validates :alignment, presence: true, length: { maximum: 2 }
  validates :goal, presence: true 
end
