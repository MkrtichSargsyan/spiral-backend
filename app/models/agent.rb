class Agent < ApplicationRecord
  has_many :houses, class_name: 'house', foreign_key: 'house_id'
end
