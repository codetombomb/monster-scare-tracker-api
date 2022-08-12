class MonstersController < ApplicationController
  get "/monsters" do
    monsters = Monster.all
    monsters.to_json(:include => [:houses, :avatar, :monster_houses])
  end
end
