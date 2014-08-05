json.array!(@sliders) do |slider|
  json.extract! slider, :id, :name, :description, :slide, :images, :user_id
  json.url slider_url(slider, format: :json)
end
