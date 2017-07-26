class UserResponse < ApplicationRecord
  belongs_to :user
  belongs_to :question

  def next_question
    Question.find(self.question_id + 1)
  end

  # This method associates the attribute ":file_upload" with a file attachment paperclip
  has_attached_file :file_upload, styles: {
     thumb: '100x100>'
  }
  # Validate the attached file_upload is file_upload/jpg, file_upload/png, etc
  validates_attachment_content_type :file_upload, :content_type => /\Aimage\/.*\Z/

end
