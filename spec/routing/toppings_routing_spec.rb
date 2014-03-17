require "spec_helper"

describe ToppingsController do
  describe "routing" do

    it "routes to #index" do
      get("/toppings").should route_to("toppings#index")
    end

    it "routes to #new" do
      get("/toppings/new").should route_to("toppings#new")
    end

    it "routes to #show" do
      get("/toppings/1").should route_to("toppings#show", :id => "1")
    end

    it "routes to #edit" do
      get("/toppings/1/edit").should route_to("toppings#edit", :id => "1")
    end

    it "routes to #create" do
      post("/toppings").should route_to("toppings#create")
    end

    it "routes to #update" do
      put("/toppings/1").should route_to("toppings#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/toppings/1").should route_to("toppings#destroy", :id => "1")
    end

  end
end
