class Coffeeshop < ActiveRecord::Base
    has_many :favorites
    has_many :users, through: :favorites
    attr_accessor :full_address

    validates :name, presence: true
    validates :display_address, presence: true
    validates :display_city, presence: true
    validates :display_state, presence: true
    validates :display_zip, presence: true

    geocoded_by :full_address
    reverse_geocoded_by :latitude, :longitude do |obj,results|
        if geo = results.first
            obj.city    = geo.city
            obj.zipcode = geo.postal_code
            obj.country = geo.country_code
        end
    end
    after_validation :geocode
    
    def distance
        read_attribute :distance
    end

    def search
        if name
        elsif display_city 
        elsif display_state
        elsif display_zip
        end 
    end

    def full_address
        "#{display_address}, #{display_city}, #{display_state} #{display_zip}"
    end

    def current_location
    end

end
