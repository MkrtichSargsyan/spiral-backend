class User < ApplicationRecord
  # encrypt password
  has_secure_password
  # Model associations
  has_many :appointments, dependent: :delete_all
  has_many :houses, through: :appointments
  # Validations
  validates_presence_of :name, :email, :password_digest
  validates :email, presence: true, uniqueness: true
end
