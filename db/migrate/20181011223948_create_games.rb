class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.string :title
      t.integer :console_id
      t.string :genre
      t.text :description
      t.integer :release_year

      t.timestamps
    end
  end
end
