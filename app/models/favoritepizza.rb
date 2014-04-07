class Favoritepizza < ActiveRecord::Base
  belongs_to :user
  belongs_to :pizza
end
