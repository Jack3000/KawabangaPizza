json.array!(@pizzas) do |pizza|
  json.extract! pizza, :id, :name, :doe_kind, :toppings
  json.url pizza_url(pizza, format: :json)
end
