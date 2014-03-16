require "spec_helper"

describe CoffeeshopsController do
  describe "routing" do

    it "routes to #index" do
      get("/coffeeshops").should route_to("coffeeshops#index")
    end

    it "routes to #new" do
      get("/coffeeshops/new").should route_to("coffeeshops#new")
    end

    it "routes to #show" do
      get("/coffeeshops/1").should route_to("coffeeshops#show", :id => "1")
    end

    it "routes to #edit" do
      get("/coffeeshops/1/edit").should route_to("coffeeshops#edit", :id => "1")
    end

    it "routes to #create" do
      post("/coffeeshops").should route_to("coffeeshops#create")
    end

    it "routes to #update" do
      put("/coffeeshops/1").should route_to("coffeeshops#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/coffeeshops/1").should route_to("coffeeshops#destroy", :id => "1")
    end

  end
end
