require "spec_helper"

describe PizzasController do
  describe "routing" do

    it "routes to #index" do
      get("/pizzas").should route_to("pizzas#index")
    end

    it "routes to #new" do
      get("/pizzas/new").should route_to("pizzas#new")
    end

    it "routes to #show" do
      get("/pizzas/1").should route_to("pizzas#show", :id => "1")
    end

    it "routes to #edit" do
      get("/pizzas/1/edit").should route_to("pizzas#edit", :id => "1")
    end

    it "routes to #create" do
      post("/pizzas").should route_to("pizzas#create")
    end

    it "routes to #update" do
      put("/pizzas/1").should route_to("pizzas#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/pizzas/1").should route_to("pizzas#destroy", :id => "1")
    end

  end
end
