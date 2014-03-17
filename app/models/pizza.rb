class Pizza < ActiveRecord::Base

  has_many :pizzatoppings
  has_many :toppings, through: :pizzatoppings
  belongs_to :user
end
