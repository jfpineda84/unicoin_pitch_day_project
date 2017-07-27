class UserResponse < ApplicationRecord
  belongs_to :user
  belongs_to :question

  def skip_question(question, section)
    until question.nil? or question.section != section
      question = question.next_question
    end
    question
  end

  def next_question
    # best guess given no other info
    question_to_return = self.question.next_question

    # section 2
    responses_in_section_2 = self.user.user_responses.where(question: Question.where(section: 2))

    ## any yes in section 2
    any_yes_in_2 = responses_in_section_2.any? do |user_response|
      user_response.response == "Yes"
    end
    if any_yes_in_2
      question_to_return = skip_question(question_to_return, 4)
    end

    ## all no in section 2
    all_no_in_2 = responses_in_section_2.all? do |user_response|
      user_response.response == "No"
    end
    if all_no_in_2
      question_to_return = skip_question(question_to_return, 5)
    end

    # always skip sections 6 and 7
    [6, 7].each do |section_to_skip|
      question_to_return = skip_question(question_to_return, section_to_skip)
    end

    question_to_return
  end



  has_attached_file :image_upload

   # Validate content type
   validates_attachment_content_type :image_upload, :content_type => /\Aimage/

   # Validate filename
   validates_attachment_file_name :image_upload, :matches => [/png\Z/, /jpe?g\Z/]



end
