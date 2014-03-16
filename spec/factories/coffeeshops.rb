# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :coffeeshop do 
    name "Intelligentsia"
    display_address "1331 Abbot Kinney Blvd"
    display_city "Venice"
    display_state "CA"
    display_zip "90401"
    neighborhood "Venice"
    phone "(310) 399-1233"
    fair_trade nil
    organic nil
    direct_trade true
    yelp_rating 4.0
    yelp_review 842
    yelp_id "intelligentsia-coffee-venice-venice"
    yelp_url "http://www.yelp.com/biz/intelligentsia-coffee-venice-venice"
    url "http://www.intelligentsiacoffee.com/location/venice-coffeebar"
    id 1
  end
end
