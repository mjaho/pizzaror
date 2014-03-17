json.array!(@pizzatoppings) do |pizzatopping|
  json.extract! pizzatopping, :id, :topping_id, :pizza_id
  json.url pizzatopping_url(pizzatopping, format: :json)
end
