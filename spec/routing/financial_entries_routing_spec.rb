require "rails_helper"

RSpec.describe FinancialEntriesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/financial_entries").to route_to("financial_entries#index")
    end

    it "routes to #new" do
      expect(:get => "/financial_entries/new").to route_to("financial_entries#new")
    end

    it "routes to #show" do
      expect(:get => "/financial_entries/1").to route_to("financial_entries#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/financial_entries/1/edit").to route_to("financial_entries#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/financial_entries").to route_to("financial_entries#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/financial_entries/1").to route_to("financial_entries#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/financial_entries/1").to route_to("financial_entries#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/financial_entries/1").to route_to("financial_entries#destroy", :id => "1")
    end

  end
end
