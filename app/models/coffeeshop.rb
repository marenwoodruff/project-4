class Coffeeshop < ActiveRecord::Base
    has_many :favorites
    has_many :users, through: :favorites
    
    validates :name, presence: true
    validates :display_address, presence: true
    validates :display_city, presence: true
    validates :display_state, presence: true
    validates :display_zip, presence: true

    geocoded_by :full_address
    after_validation :geocode
    
    def full_address
        "#{display_address}, #{display_city}, #{display_state} #{display_zip}"
    end

end
