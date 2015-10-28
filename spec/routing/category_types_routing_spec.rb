require "rails_helper"

RSpec.describe CategoryTypesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/category_types").to route_to("category_types#index")
    end

    it "routes to #new" do
      expect(:get => "/category_types/new").to route_to("category_types#new")
    end

    it "routes to #show" do
      expect(:get => "/category_types/1").to route_to("category_types#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/category_types/1/edit").to route_to("category_types#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/category_types").to route_to("category_types#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/category_types/1").to route_to("category_types#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/category_types/1").to route_to("category_types#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/category_types/1").to route_to("category_types#destroy", :id => "1")
    end

  end
end
