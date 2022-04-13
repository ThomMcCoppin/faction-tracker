class Npc < ApplicationRecord
  belongs_to :faction

  validates :name, presence: true
  validates :race, presence: true, length: { maximum: 20 }
  validates :characterclass, presence: true, length: { maximum: 20 }
  validates :description, presence: true 
end
