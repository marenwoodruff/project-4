class CreateCoffeeshops < ActiveRecord::Migration
  def change
    create_table :coffeeshops do |t|
      t.string :name
      t.string :display_address
      t.string :display_city
      t.string :display_state
      t.string :display_zip
      t.string :neighborhood
      t.string :phone
      t.string :fair_trade
      t.string :organic
      t.string :direct_trade
      t.float :yelp_rating
      t.integer :yelp_review
      t.string :yelp_id
      t.string :yelp_url
      t.string :url

      t.timestamps
    end
  end
end
