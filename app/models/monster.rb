class Monster < ActiveRecord::Base
    has_one :avatar
    has_many :monster_houses
    has_many :houses, -> { distinct }, through: :monster_houses

end