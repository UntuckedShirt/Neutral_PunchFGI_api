class CreateGames < ActiveRecord::Migration[6.1]
  def change
    create_table :games do |t|
      t.string :title
      t.string :publisher
      t.string :publish_date
      t.integer :player_count
      t.integer :creator_id

      t.timestamps
    end
  end
end
