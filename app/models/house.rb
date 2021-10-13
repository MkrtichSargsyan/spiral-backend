class House < ApplicationRecord
  belongs_to :agent

  has_many :appointments
  has_many :users, through: :appointments


  validates :address,:pictures,:price,:description,:features,:bedrooms,:bathrooms,:sqft,:lat,:long,:acres,:agent_id, presence: true

end
