class Coffeeshop < ActiveRecord::Base
    validates :name, presence: true
    validates :display_address, presence: true
    validates :display_city, presence: true
    validates :display_state, presence: true
    validates :display_zip, presence: true
end
