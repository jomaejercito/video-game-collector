class CreateCollections < ActiveRecord::Migration[5.2]
  def change
    create_table :collections do |t|
      t.integer :user_id
      t.integer :game_id
      t.string :status
      t.integer :hours
      t.text :review
      t.integer :rating

      t.timestamps
    end
  end
end
