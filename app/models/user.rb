class User < ActiveRecord::Base
  has_many :pizzas
  has_many :favoritepizzas, dependent: :destroy
  validates :username, uniqueness: true, length: { minimum: 3 }

  has_secure_password

  def to_s
    "#{self.firstname} #{self.lastname}"
  end

end
