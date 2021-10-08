class User < ApplicationRecord
  # encrypt password
  has_secure_password
  # Model associations
  has_many :appointments, class_name: 'appointment', foreign_key: 'appointment_id'
  # Validations
  validates_presence_of :name, :email, :password_digest
  validates :email, presence: true, uniqueness: true
end
