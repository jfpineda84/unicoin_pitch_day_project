json.extract! question, :id, :position, :name, :text, :form_id, :created_at, :updated_at
json.url question_url(question, format: :json)
