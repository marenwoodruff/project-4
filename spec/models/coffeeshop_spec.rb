require 'spec_helper'

describe Coffeeshop do

    it "has a valid factory" do
        expect(FactoryGirl.build(:coffeeshop)).to be_valid 
    end

    it 'is valid with name, display_address, display_city, display_state and display_zip' do
        FactoryGirl.create(:coffeeshop).should be_valid
    end

    it 'is invalid without name' do
        FactoryGirl.build(:coffeeshop, name: nil).should_not be_valid
    end

    it 'is invalid without display_address' do
        FactoryGirl.build(:coffeeshop, display_address: nil).should_not be_valid
    end

    it 'is invalid without display_city' do
        FactoryGirl.build(:coffeeshop, display_city: nil).should_not be_valid
    end

    it 'is invalid without display_state' do
        FactoryGirl.build(:coffeeshop, display_state: nil).should_not be_valid
    end

    it 'is invalid without display_zip' do
        FactoryGirl.build(:coffeeshop, display_zip: nil).should_not be_valid
    end
end
