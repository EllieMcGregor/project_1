json.array!(@courses) do |course|
  json.extract! course, :id, :name, :description, :start_date, :end_date, :price
  json.url course_url(course, format: :json)
end
