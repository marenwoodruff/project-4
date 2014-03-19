class User < ActiveRecord::Base
    has_many :favorites
    has_many :coffee_shops, through: :favorites
end
