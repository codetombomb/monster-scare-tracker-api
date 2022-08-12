class CreateMonsters < ActiveRecord::Migration[6.1]
  def change
    create_table :monsters do |t|
      t.string :full_name
      t.integer :age
      t.integer :scary_rating, :default => 0
    end
  end
end
