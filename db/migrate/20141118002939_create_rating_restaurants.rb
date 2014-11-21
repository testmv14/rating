class CreateRatingRestaurants < ActiveRecord::Migration
  def change
    create_table :rating_restaurants do |t|
      t.text :comments
      t.integer :star

      t.timestamps
    end
  end
end
