require 'rest-client'
require 'json'

user1 = User.create(name: 'Mike', email: 'mike@gmail.com', password: 'aaaaaa')
user2 = User.create(name: 'Niko', email: 'niko@gmail.com', password: 'aaaaaa')
user3 = User.create(name: 'Chad', email: 'chad@gmail.com', password: 'aaaaaa')

url = 'https://randomuser.me/api/?results=12'

response = RestClient.get(url) 
results = JSON.parse(response.body)

8.times do |i|
  Agent.create(name: Faker::Name.name,
               title: 'Broker / Realtor',
               photo: results['results'].sample['picture']['medium'],
               number: Faker::PhoneNumber.cell_phone.to_s)
end

25.times do
  House.create(address: Faker::Address.street_address,
               pictures: [
                 'https://cdnparap120.paragonrels.com/ParagonImages/Property/p12/TRIANGLE/2399064/0/0/0/56d8912e9dda09c2aeca5fe130db54b2/2/b9d97fb02a185f7f50be77e432625c98/2399064.JPG',
                 'https://cdnparap120.paragonrels.com/ParagonImages/Property/p12/TRIANGLE/2399064/1/0/0/6bcd7da11cce9e711bb2a423b1194741/2/b9d97fb02a185f7f50be77e432625c98/2399064-1.JPG',
                 'https://cdnparap120.paragonrels.com/ParagonImages/Property/p12/TRIANGLE/2399064/2/0/0/41c5d6dc3ff7e0f06d5db37874aa974b/2/b9d97fb02a185f7f50be77e432625c98/2399064-2.JPG',
                 'https://cdnparap120.paragonrels.com/ParagonImages/Property/p12/TRIANGLE/2399064/5/0/0/542e793dd30350498759c3034482efb7/2/b9d97fb02a185f7f50be77e432625c98/2399064-5.JPG',
                 'https://cdnparap120.paragonrels.com/ParagonImages/Property/p12/TRIANGLE/2399064/9/0/0/c44ddf81163e0e98ced2ffd2b7e58f65/2/b9d97fb02a185f7f50be77e432625c98/2399064-9.JPG',
                 'https://cdnparap120.paragonrels.com/ParagonImages/Property/p12/TRIANGLE/2399064/17/0/0/12cf550141317e377041e44f0e7529f0/2/b9d97fb02a185f7f50be77e432625c98/2399064-17.JPG',
                 'https://cdnparap120.paragonrels.com/ParagonImages/Property/p12/TRIANGLE/2399064/18/0/0/5ded128d59a73200ab8d932e3b5c8a07/2/b9d97fb02a185f7f50be77e432625c98/2399064-18.JPG',
                 'https://cdnparap120.paragonrels.com/ParagonImages/Property/p12/TRIANGLE/2399064/19/0/0/e1d834ec3661b1500dcc2c2df6ae0008/2/b9d97fb02a185f7f50be77e432625c98/2399064-19.JPG'
               ],
               price: (rand(200..1_000) * 1000).to_s,
               description: 'ROOF REPLACED 2015*TRANE GAS PAC 2018*Smooth ceilings throughout with vaulted ceiling in LR and MBR* HARDWOOD FLOORS except bedrooms* Rare opportunity .....a one level in popular neighborhood close to Duke, I/40 , Southpointe Mall and many wonderful restaurant',
               features: ['9 Ft Ceiling',
                          'Cable TV Available',
                          'Ceiling Fan',
                          'Garage Shop',
                          'Pantry',
                          'Skylight(s)',
                          'Smoke Alarm',
                          'Walk in Closet',
                          'Smooth Ceilings',
                          'Deck', 'Gutters',
                          'Insulated Glass',
                          'Insulated Windows',
                          'Porch'],
               bedrooms: rand(1..5).to_s,
               bathrooms: rand(1..3).to_s,
               sqft: rand(2000..3000).to_s,
               lat: rand(40.0..40.9),
               long: rand(44.0..44.9),
               acres: '0.25',
               agent_id: rand(1..8).to_s)
end
