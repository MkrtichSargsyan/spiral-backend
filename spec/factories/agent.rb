FactoryBot.define do
  factory :agent do
    id { 1 }
    name { 'Mike' }
    title { 'broker' }
    photo do
      'roperty/p1c98/2399064.JPG'
    end
    number { '4353453' }
  end
end
