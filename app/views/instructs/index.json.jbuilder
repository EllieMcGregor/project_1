json.array!(@instructs) do |instruct|
  json.extract! instruct, :id, :course_id, :user_id, :level
  json.url instruct_url(instruct, format: :json)
end
