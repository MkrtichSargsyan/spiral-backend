# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user1 = User.create(name: 'Mike', email: 'mike@gmail.com', password: 'aaaaaa')
user2 = User.create(name: 'Niko', email: 'niko@gmail.com', password: 'aaaaaa')
user3 = User.create(name: 'Chad', email: 'chad@gmail.com', password: 'aaaaaa')

agent1 = Agent.create(name: 'agent1', title: 'Broker / Realtor',
                      photo: 'https://medias.spotern.com/spots/w640/0/572-1564581110.jpg', number: '(919) 382-2000')
agent2 = Agent.create(name: 'agent2', title: 'Broker / Realtor',
                      photo: 'https://upload.wikimedia.org/wikipedia/commons/c/c2/Smith_Matrix_mannequins_(cropped).jpg', number: '(919) 382-2001')
agent3 = Agent.create(name: 'agent3', title: 'Broker / Realtor',
                      photo: 'https://www.giantfreakinrobot.com/wp-content/uploads/2021/06/1d506066c6704153fdfef826d90b0b65f6a3cc6c-900x450.jpeg', number: '(919) 382-2002')
