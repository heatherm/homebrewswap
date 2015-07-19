json.array!(@beers) do |beer|
  json.extract! beer, :id, :style, :brewed_on, :growlers_remaining
  json.url beer_url(beer, format: :json)
end
