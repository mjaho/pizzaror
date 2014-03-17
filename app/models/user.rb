class User < ActiveRecord::Base
  has_many :pizzas
  validates :username, uniqueness: true, length: { minimum: 3 }

  has_secure_password

end
