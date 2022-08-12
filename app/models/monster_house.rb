class MonsterHouse < ActiveRecord::Base
    belongs_to :monster 
    belongs_to :house
end