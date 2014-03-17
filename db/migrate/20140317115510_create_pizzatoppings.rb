class CreatePizzatoppings < ActiveRecord::Migration
  def change
    create_table :pizzatoppings do |t|
      t.integer :topping_id
      t.integer :pizza_id

      t.timestamps
    end
  end
end
