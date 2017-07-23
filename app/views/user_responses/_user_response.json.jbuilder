json.extract! user_response, :id, :response, :user_id, :question_id, :created_at, :updated_at
json.url user_response_url(user_response, format: :json)
