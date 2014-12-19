json.array!(@campuses) do |campus|
  json.extract! campus, :id, :name, :description, :location, :image
  json.url campus_url(campus, format: :json)
end
