class House < ApplicationRecord
  belongs_to :agent

  has_many :appointments
  has_many :users, through: :appointments
end
