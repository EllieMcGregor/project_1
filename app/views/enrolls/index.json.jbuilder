json.array!(@enrolls) do |enroll|
  json.extract! enroll, :id, :course_id, :user_id, :payment_status
  json.url enroll_url(enroll, format: :json)
end
