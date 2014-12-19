json.array!(@bookings) do |booking|
  json.extract! booking, :id, :course_id, :classroom_id, :date
  json.url booking_url(booking, format: :json)
end
