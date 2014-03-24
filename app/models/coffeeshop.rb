class Coffeeshop < ActiveRecord::Base
    has_many :favorites
    has_many :users, through: :favorites
    attr_accessor :full_address

    validates :name, presence: true
    validates :display_address, presence: true
    validates :display_city, presence: true
    validates :display_state, presence: true
    validates :display_zip, presence: true

    geocoded_by :ip_address
    after_validation :geocode, :if => :full_address_changed?
    # reverse_geocoded_by :latitude, :longitude,
    # :address => :location
    # after_validation :reverse_geocode
    
    def full_address
        "#{display_address}, #{display_city}, #{display_state} #{display_zip}"
    end

end
