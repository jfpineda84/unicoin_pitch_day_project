class UserResponse < ApplicationRecord
  belongs_to :user
  belongs_to :question

  def next_question
    Question.find(self.question_id + 1)
  end

  # This method associates the attribute ":image" with a file attachment paperclip
  has_attached_file :image, styles: {
    medium: '300x300>'
  }
  # Validate the attached image is image/jpg, image/png, etc
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

end
