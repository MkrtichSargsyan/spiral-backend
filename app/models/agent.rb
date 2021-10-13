class Agent < ApplicationRecord
  has_many :houses
  has_many :appointments, class_name: 'appointment', foreign_key: 'appointment_id'

  validates :name, presence: true, uniqueness: true
  validates :title, :number, :photo, presence: true
end
