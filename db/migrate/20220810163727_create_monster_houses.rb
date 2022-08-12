class CreateMonsterHouses < ActiveRecord::Migration[6.1]
  def change
    create_table :monster_houses do |t| #CREATE TABLE IF NOT EXISTS monster_houses (id INTEGER PRIMARY KEY, monster_id INTEGER)
      t.integer :monster_id
      t.integer :house_id
      t.boolean :completed, :default => false
    end
  end
end
