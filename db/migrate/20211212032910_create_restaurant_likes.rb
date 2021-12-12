class CreateRestaurantLikes < ActiveRecord::Migration[6.0]
  def change
    create_table :restaurant_likes do |t|
      t.integer :user_id
      t.integer :restaurant_id
      t.boolean :like

      t.timestamps
    end
  end
end
