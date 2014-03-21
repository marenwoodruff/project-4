class CreateShops < ActiveRecord::Migration
  def change
    create_table :shops do |t|
      t.string :name
      t.string :display_address
      t.string :yelp_id

      t.timestamps
    end
  end
end
