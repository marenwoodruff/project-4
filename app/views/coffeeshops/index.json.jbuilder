json.coffeeshops do |json|
    json.array!(@coffeeshops) do |coffeeshop|
      json.extract! coffeeshop, :id, :name, :display_address, :display_city, :display_state, :display_zip, :neighborhood, :phone, :fair_trade, :organic, :direct_trade, :yelp_rating, :yelp_review, :yelp_id, :yelp_url, :url, :latitude, :longitude, :distance
      json.url coffeeshop_url(coffeeshop, format: :json)
    end
end