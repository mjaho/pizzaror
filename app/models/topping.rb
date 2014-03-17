class Topping < ActiveRecord::Base
  has_many :pizzatoppings
  has_many :pizzas, through: :pizzatoppings
end
