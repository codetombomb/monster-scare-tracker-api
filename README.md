# monster-scare-tracker-api

## SWABATs

- [ ] Seed a database using `httparty` to make HTTP requests to an external API
- [ ] Use Faker to seed other models in a db
- [ ] Create front end that will communicate with CRUD endpoints

## Taking a look at our domain model

Entity Relationship Diagram: https://drive.google.com/file/d/1XLcOSQAjTc40fFJrl2faQNB-QEOD1Sh1/view?usp=sharing

### User Stories
Being a monster is hard work and it can be stressful managing a large group of monsters. This Monster Management App is for high ranking monsters to manage their minions to make sure that no house goes un-haunted.

- As a user, I would like to be able to see a list of Monster's avatars, name,  age,  and scary rating. 
- As a user, I would like to be able to click on each monster avatar and be shown the list of houses that have been assigned to the monster. This should show if the house has been haunted or not.

- As a user, I would like to be able to mark a monster_house as completed.
- As a user, I would like to assign a new house to be haunted by a particular monster or monsters. I would like to be able to create a new house through an "Add house form"

### Creating the DB
1. Create migrations 
2. Add create_table to all migrations
    a. add column names and data types
3. Run `rake db:migrate`

### Creating the Models
1. Utilize rake command to create models
2. Add association maros

### Add some gems
Lets start off with installing our dependencies: `bundle install`

Now, lets add faker and httparty: 
`bundle add httparty`
`bundle add faker`

From the [HTTParty](https://github.com/jnunemaker/httparty) docs:

```ruby
# httparty.rb
require 'httparty'

response = HTTParty.get('https://api.nasa.gov/planetary/apod?api_key=DEMO_KEY')
puts response.body if response.code == 200
```

We will need to generate address data for our House model. We can do that using [the Faker gem](https://github.com/faker-ruby/faker):

```ruby
Faker::Address.city #=> "Imogeneborough"

Faker::Address.street_name #=> "Larkin Fork"

Faker::Address.street_address #=> "282 Kevin Brook"

Faker::Address.secondary_address #=> "Apt. 672"

Faker::Address.building_number #=> "7304"

Faker::Address.mail_box #=> "PO Box 123"

Faker::Address.community #=> "University Crossing"

Faker::Address.zip_code #=> "58517" or "23285-4905"

Faker::Address.zip #=> "58517" or "66259-8212"

Faker::Address.postcode #=> "76032-4907" or "58517"

Faker::Address.time_zone #=> "Asia/Yakutsk"

Faker::Address.street_suffix #=> "Street"

Faker::Address.city_suffix #=> "fort"

Faker::Address.city_prefix #=> "Lake"

Faker::Address.state #=> "California"
```

### Using the .save Active Record method


### Testing the relationships 
- Monster.first.houses
- Monster.all.sample.avatar
- Monster.all.sample.monster_houses

- House.all.sample.monsters
- House.all.sample.monsters.length (How many monsters are going to be haunting a particular house)
- House.all.sample.monster_houses

- Avatar.all.sample.monster (.monsters should not exist)

### Running the API and returning associations with .to_json(:include => :associations)

[.to_json docs](https://apidock.com/rails/ActiveRecord/Serialization/to_json)