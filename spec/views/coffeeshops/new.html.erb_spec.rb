require 'spec_helper'

describe "coffeeshops/new" do
  before(:each) do
    assign(:coffeeshop, stub_model(Coffeeshop,
      :name => "MyString",
      :display_address => "MyString",
      :display_city => "MyString",
      :display_state => "MyString",
      :display_zip => "MyString",
      :neighborhood => "MyString",
      :phone => "MyString",
      :fair_trade => "MyString",
      :organic => "MyString",
      :direct_trade => "MyString",
      :yelp_rating => 1.5,
      :yelp_review => 1,
      :yelp_id => "MyString",
      :yelp_url => "MyString",
      :url => "MyString"
    ).as_new_record)
  end

  it "renders new coffeeshop form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", coffeeshops_path, "post" do
      assert_select "input#coffeeshop_name[name=?]", "coffeeshop[name]"
      assert_select "input#coffeeshop_display_address[name=?]", "coffeeshop[display_address]"
      assert_select "input#coffeeshop_display_city[name=?]", "coffeeshop[display_city]"
      assert_select "input#coffeeshop_display_state[name=?]", "coffeeshop[display_state]"
      assert_select "input#coffeeshop_display_zip[name=?]", "coffeeshop[display_zip]"
      assert_select "input#coffeeshop_neighborhood[name=?]", "coffeeshop[neighborhood]"
      assert_select "input#coffeeshop_phone[name=?]", "coffeeshop[phone]"
      assert_select "input#coffeeshop_fair_trade[name=?]", "coffeeshop[fair_trade]"
      assert_select "input#coffeeshop_organic[name=?]", "coffeeshop[organic]"
      assert_select "input#coffeeshop_direct_trade[name=?]", "coffeeshop[direct_trade]"
      assert_select "input#coffeeshop_yelp_rating[name=?]", "coffeeshop[yelp_rating]"
      assert_select "input#coffeeshop_yelp_review[name=?]", "coffeeshop[yelp_review]"
      assert_select "input#coffeeshop_yelp_id[name=?]", "coffeeshop[yelp_id]"
      assert_select "input#coffeeshop_yelp_url[name=?]", "coffeeshop[yelp_url]"
      assert_select "input#coffeeshop_url[name=?]", "coffeeshop[url]"
    end
  end
end
