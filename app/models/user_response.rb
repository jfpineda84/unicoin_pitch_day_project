class UserResponse < ApplicationRecord
  belongs_to :user
  belongs_to :question

  def next_question
    Question.find(self.question_id + 1)
  end
end
