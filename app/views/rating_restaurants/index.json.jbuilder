json.array!(@rating_restaurants) do |rating_restaurant|
  json.extract! rating_restaurant, :id, :comments, :star
  json.url rating_restaurant_url(rating_restaurant, format: :json)
end
