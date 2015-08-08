json.array!(@iphones) do |iphone|
  json.extract! iphone, :id, :Model,  :Memory, :Condition, :Price, :Availability
  json.url iphone_url(iphone, format: :json)
end
