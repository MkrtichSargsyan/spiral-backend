FactoryBot.define do
  factory :appointment do
    id { 1 }
    user_id { FactoryBot.build(:user).id }
  end
end
