class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :agent
end
