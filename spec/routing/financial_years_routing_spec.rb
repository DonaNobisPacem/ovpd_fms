require "rails_helper"

RSpec.describe FinancialYearsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/financial_years").to route_to("financial_years#index")
    end

    it "routes to #new" do
      expect(:get => "/financial_years/new").to route_to("financial_years#new")
    end

    it "routes to #show" do
      expect(:get => "/financial_years/1").to route_to("financial_years#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/financial_years/1/edit").to route_to("financial_years#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/financial_years").to route_to("financial_years#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/financial_years/1").to route_to("financial_years#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/financial_years/1").to route_to("financial_years#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/financial_years/1").to route_to("financial_years#destroy", :id => "1")
    end

  end
end
