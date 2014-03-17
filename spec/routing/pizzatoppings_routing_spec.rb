require "spec_helper"

describe PizzatoppingsController do
  describe "routing" do

    it "routes to #index" do
      get("/pizzatoppings").should route_to("pizzatoppings#index")
    end

    it "routes to #new" do
      get("/pizzatoppings/new").should route_to("pizzatoppings#new")
    end

    it "routes to #show" do
      get("/pizzatoppings/1").should route_to("pizzatoppings#show", :id => "1")
    end

    it "routes to #edit" do
      get("/pizzatoppings/1/edit").should route_to("pizzatoppings#edit", :id => "1")
    end

    it "routes to #create" do
      post("/pizzatoppings").should route_to("pizzatoppings#create")
    end

    it "routes to #update" do
      put("/pizzatoppings/1").should route_to("pizzatoppings#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/pizzatoppings/1").should route_to("pizzatoppings#destroy", :id => "1")
    end

  end
end
