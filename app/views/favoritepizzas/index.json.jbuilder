json.array!(@favoritepizzas) do |favoritepizza|
  json.extract! favoritepizza, :id, :user_id, :pizza_id
  json.url favoritepizza_url(favoritepizza, format: :json)
end
