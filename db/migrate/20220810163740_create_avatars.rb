class CreateAvatars < ActiveRecord::Migration[6.1]
  def change
    create_table :avatars do |t|
      t.string :url
      t.integer :monster_id
    end
  end
end
