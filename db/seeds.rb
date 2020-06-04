# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Item.destroy_all
User.destroy_all
Cart.destroy_all
JoinTableCartItem.destroy_all

20.times do 
  u=User.create(password:"not_blank",email:Faker::Internet.email)
  # c=Cart.create(user_id: User.all.sample.id)

  kitten = ImageSuckr::GoogleSuckr.new
  i=Item.create(title: Faker::Creature::Cat.name, description: Faker::Creature::Cat.breed, price: Faker::Number.leading_zero_number(digits: 3), image_url:"https://placekitten.com/800/#{rand(800..999)}")
  p i.errors
  # join_table_cart_items = JoinTableCartItem.create(cart_id: Cart.all.sample.id, item_id: Item.all.sample.id)
  puts "#"*100
  # p join_table_cart_items.errors
  # kitten.get_image_url({"q" => "kitten"})

end