require 'spec_helper'

describe CoffeeshopsController do
  render_views
  
  describe "GET index" do

    # it 'populates an array of coffeeshops' do 
    #     # @coffeeshop = FactoryGirl.create(:coffeeshop)
    #     # @coffeeshop1 = FactoryGirl.create(:coffeeshop)
    #     get :index
    #     expect(assigns(:coffeeshops)).to match_array [@coffeeshop]
    # end

    it 'renders the :index template' do
        get :index
        expect(response).to render_template :index
    end

  end 

  describe "GET show" do
    it "should retrieve a single coffeeshop" do
        @coffeeshop = FactoryGirl.create(:coffeeshop) 
        get :show, id: @coffeeshop
        expect(assigns(:coffeeshop)).to eq @coffeeshop
    end

    it 'renders the :show template' do
        @coffeeshop = FactoryGirl.create(:coffeeshop) 
        get :show, id: @coffeeshop
        expect(response).to render_template :show
    end
    
  end

  describe "GET new" do
    it "creates a new instance of coffeeshop" do
        get :new
        assigns(:coffeeshop).should be_a_new(Coffeeshop)
    end
  end

  describe "GET edit" do
    it "assigns the requested coffeeshop as @coffeeshop" do
        @coffeeshop = FactoryGirl.create(:coffeeshop)
        get :edit, id: @coffeeshop
        expect(assigns(:coffeeshop)).to eq @coffeeshop
    end

    it 'renders the :edit template' do
        @coffeeshop = FactoryGirl.create(:coffeeshop) 
        get :edit, id: @coffeeshop
        expect(response).to render_template :edit
    end
  end


  describe "PUT update" do
    
    it "updates the requested coffeeshop" do
        @coffeeshop = FactoryGirl.create(:coffeeshop)
        Coffeeshop.any_instance.should_receive(:update).with({ "name" => "Intelligentsia" })
        put :update, {:id => @coffeeshop, :coffeeshop => { "name" => "Intelligentsia" }}
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested coffeeshop" do
        @coffeeshop = FactoryGirl.create(:coffeeshop)
        expect {
            delete :destroy, id: @coffeeshop
        }.to change(Coffeeshop, :count).by(-1)
    end

    it "redirects to the coffeeshops list" do
        @coffeeshop = FactoryGirl.create(:coffeeshop)
        delete :destroy, id: @coffeeshop
        response.should redirect_to(coffeeshops_url)
    end
  end

end
