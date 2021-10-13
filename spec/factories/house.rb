FactoryBot.define do
  factory :house do
    address { 'sssss' }
    pictures { %w[s d] }
    price { '345' }
    description { 'd' }
    features { %w[s d] }
    bedrooms { '3' }
    bathrooms { '3' }
    sqft { '4' }
    lat { '4' }
    long { '334' }
    acres { '54' }
    agent_id { '1' }
  end
end
