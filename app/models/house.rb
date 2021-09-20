class House < ApplicationRecord
  belongs_to :agent, class_name: 'agent', foreign_key: 'agent_id'
end
