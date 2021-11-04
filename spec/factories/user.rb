FactoryBot.define do
  factory :user do
    id { 1 }
    name { 'Mike' }
    email { 'm@gmail.com' }
    password_digest { 'aaaaaa' }
  end
end
