class House < ActiveRecord::Base
    has_many :monster_houses
    has_many :monsters, through: :monster_houses
end