require 'spec_helper'

describe "coffeeshops/index" do
  before(:each) do
    assign(:coffeeshops, [
      stub_model(Coffeeshop,
        :name => "Name",
        :display_address => "Display Address",
        :display_city => "Display City",
        :display_state => "Display State",
        :display_zip => "Display Zip",
        :neighborhood => "Neighborhood",
        :phone => "Phone",
        :fair_trade => "Fair Trade",
        :organic => "Organic",
        :direct_trade => "Direct Trade",
        :yelp_rating => 1.5,
        :yelp_review => 1,
        :yelp_id => "Yelp",
        :yelp_url => "Yelp Url",
        :url => "Url"
      ),
      stub_model(Coffeeshop,
        :name => "Name",
        :display_address => "Display Address",
        :display_city => "Display City",
        :display_state => "Display State",
        :display_zip => "Display Zip",
        :neighborhood => "Neighborhood",
        :phone => "Phone",
        :fair_trade => "Fair Trade",
        :organic => "Organic",
        :direct_trade => "Direct Trade",
        :yelp_rating => 1.5,
        :yelp_review => 1,
        :yelp_id => "Yelp",
        :yelp_url => "Yelp Url",
        :url => "Url"
      )
    ])
  end

  it "renders a list of coffeeshops" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Display Address".to_s, :count => 2
    assert_select "tr>td", :text => "Display City".to_s, :count => 2
    assert_select "tr>td", :text => "Display State".to_s, :count => 2
    assert_select "tr>td", :text => "Display Zip".to_s, :count => 2
    assert_select "tr>td", :text => "Neighborhood".to_s, :count => 2
    assert_select "tr>td", :text => "Phone".to_s, :count => 2
    assert_select "tr>td", :text => "Fair Trade".to_s, :count => 2
    assert_select "tr>td", :text => "Organic".to_s, :count => 2
    assert_select "tr>td", :text => "Direct Trade".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Yelp".to_s, :count => 2
    assert_select "tr>td", :text => "Yelp Url".to_s, :count => 2
    assert_select "tr>td", :text => "Url".to_s, :count => 2
  end
end
