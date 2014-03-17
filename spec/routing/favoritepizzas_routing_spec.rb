require "spec_helper"

describe FavoritepizzasController do
  describe "routing" do

    it "routes to #index" do
      get("/favoritepizzas").should route_to("favoritepizzas#index")
    end

    it "routes to #new" do
      get("/favoritepizzas/new").should route_to("favoritepizzas#new")
    end

    it "routes to #show" do
      get("/favoritepizzas/1").should route_to("favoritepizzas#show", :id => "1")
    end

    it "routes to #edit" do
      get("/favoritepizzas/1/edit").should route_to("favoritepizzas#edit", :id => "1")
    end

    it "routes to #create" do
      post("/favoritepizzas").should route_to("favoritepizzas#create")
    end

    it "routes to #update" do
      put("/favoritepizzas/1").should route_to("favoritepizzas#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/favoritepizzas/1").should route_to("favoritepizzas#destroy", :id => "1")
    end

  end
end
