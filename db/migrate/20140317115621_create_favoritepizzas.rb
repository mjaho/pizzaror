class CreateFavoritepizzas < ActiveRecord::Migration
  def change
    create_table :favoritepizzas do |t|
      t.integer :user_id
      t.integer :pizza_id

      t.timestamps
    end
  end
end
