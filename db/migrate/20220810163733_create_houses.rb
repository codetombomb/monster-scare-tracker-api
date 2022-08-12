class CreateHouses < ActiveRecord::Migration[6.1]
  def change
    create_table :houses do |t|
      t.string :city
      t.string :state
      t.string :address
    end
  end
end
