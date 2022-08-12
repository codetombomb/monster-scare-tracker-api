require "httparty"
require "pry"
require "awesome_print"
require "faker"

response = HTTParty.get("https://botw-compendium.herokuapp.com/api/v2/category/monsters")

if response.code == 200
  response.parsed_response["data"].each do |monster_data|
    new_monster = Monster.create(
      full_name: monster_data["name"],
      age: rand(15..90),
      scary_rating: rand(1..10),
    )
    monster_avatar = Avatar.create(
      monster_id: new_monster,
      url: monster_data["image"],
    )
    new_monster.avatar = monster_avatar
  end
end

# Create 50 houses 
50.times do
  new_house = House.find_or_create_by(
    address: Faker::Address.street_address
  )
  new_house.city = Faker::Address.city
  new_house.state = Faker::Address.state
  new_house.save
end

# Iterate over all mosnters and assign 10 houses
Monster.all.each do |monster|
  10.times do
    monster.houses << House.all.sample
  end
end 
