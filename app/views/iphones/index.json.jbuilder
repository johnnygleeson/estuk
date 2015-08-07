json.array!(@iphones) do |iphone|
  json.extract! iphone, :id, :model, :GBs, :Memory, :condition, :price, :availability
  json.url iphone_url(iphone, format: :json)
end
