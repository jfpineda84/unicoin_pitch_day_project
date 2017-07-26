class UserResponse < ApplicationRecord
  belongs_to :user
  belongs_to :question

  def next_question
    Question.find(self.question_id + 1)
  end



  has_attached_file :image_upload

   # Validate content type
   validates_attachment_content_type :image_upload, :content_type => /\Aimage/

   # Validate filename
   validates_attachment_file_name :image_upload, :matches => [/png\Z/, /jpe?g\Z/]

   # Explicitly do not validate
  #  do_not_validate_attachment_file_type :image_upload
 # end


end
