class Agent < ApplicationRecord
  has_many :houses, class_name: 'house', foreign_key: 'house_id'
  has_many :appointments, class_name: "appointment", foreign_key: "appointment_id"
end
