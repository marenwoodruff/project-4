class User < ActiveRecord::Base
    has_many :favorites
    has_many :coffee_shops, through: :favorites
    scope :closest_coffee_shops, order('distance asc')
end
