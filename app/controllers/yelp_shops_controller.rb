

class YelpShopsController < ApplicationController

def index
    #temporary save and then destory with every new search
  	YelpShop.destroy_all

    term = URI::encode(params[:term])
    location = URI::encode(params[:location]) #/// create search form to use the term & location
    #Yelp Api identitfication keys
    consumer_key = 'HeQOkzJr-cCt3RNFX5Wmhw'
    consumer_secret = 'bWPmDsugZu3TUz6eVcNHwxacjGM'
    token = 'fYYyJUwaZ76S16Yeuj2PLB-0QcxOkf5A'
    token_secret = 'RD8qCoT0beDQFWmLyAHJ8B67WHw'
    # Yelp api url
    api_host = 'api.yelp.com'
    #Authenication of api request call
    consumer = OAuth::Consumer.new(consumer_key, consumer_secret, {:site => "http://#{api_host}"})
    access_token = OAuth::AccessToken.new(consumer, token, token_secret)
    # api request path of search term & location. Term  & location are defined on lines 5 & 6s
    path = "/v2/search?term=#{term}&location=#{location}"
    # put the information from the yelp api in Json format
    response = JSON.parse(access_token.get(path).body)
    @response = response

    # raise response['businesses'].inspect
    # The response will print in Json the business name, address and yelp id
    yelp_shops = response['businesses']  
    yelp_shops.each do |bus|
      # my app fields = yelp api field
      new_bus = YelpShop.new
      new_bus.name = bus['name']
      new_bus.display_address = bus['location']['display_address'][0]
      new_bus.yelp_id = bus['id']
      new_bus.save
    end
    @yelp_shops = YelpShop.all
  end

  def new
  	@yelp_shop = YelpShop.new
  end
end


