class Question < ApplicationRecord
  belongs_to :form
  has_many :user_responses

CITIZENSHIP_ANSWERS = ["Yes", "No", "Not sure"]
end
