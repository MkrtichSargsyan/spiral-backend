class House < ApplicationRecord
  belongs_to :agent

  # scope :house, -> { where(:attibute => value)}
  # Ex:- scope :active, -> {where(:active => true)}
end
