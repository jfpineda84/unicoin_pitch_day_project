class FormsController < ApplicationController


def generate_pdf
  pdftk = PdfForms.new('/usr/local/bin/pdftk')
  p pdftk.get_field_names "#{Rails.root}/public/PdfFafsa1718.pdf"

  question1 = Question.find_by(name: "..")
  response1 = UserResponse.find_by(user: current_user, question: question1).response

  pdftk.fill_form "#{Rails.root}/public/PdfFafsa1718.pdf", "#{Rails.root}/public/#{current_user.id}_fafsa.pdf",
    "field_for_question_1" => reponse1,
    "field_for_question_1" => reponse1,
end

end



# pdftk.fill_form "#{Rails.root}/public/PdfFafsa1718.pdf", "#{current_user.id}_fafsa.pdf", "topmostSubform[0].Page3[0].Q1_Last_Name[0]" => "Clardige"
