class CreateToppings < ActiveRecord::Migration
  def change
    create_table :toppings do |t|
      t.string :name
      t.float :amount
      t.string :unit

      t.timestamps
    end
  end
end
