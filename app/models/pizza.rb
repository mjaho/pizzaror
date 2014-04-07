class Pizza < ActiveRecord::Base

  has_many :pizzatoppings
  has_many :toppings, through: :pizzatoppings
  has_many :favoritepizzas, dependent: :destroy
  belongs_to :user


end
