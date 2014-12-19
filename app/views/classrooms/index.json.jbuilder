json.array!(@classrooms) do |classroom|
  json.extract! classroom, :id, :room_name, :capacity, :campus_id
  json.url classroom_url(classroom, format: :json)
end
