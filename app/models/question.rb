class Question < ApplicationRecord
  belongs_to :form
  has_many :user_responses

  def next_question
     Question.find_by(id: self.id + 1)
  end
  
  def prev_question
    Question.find(self.id - 1)
  end

CITIZENSHIP_ANSWERS = ["Yes, I am a US citizen (US National)", "No, but I am an eligible non-citizen", "No, I am not a citizen or an eligible non-citizen."]

MARITAL_STATUS_ANSWERS = ["I am single", "I am married/remarried", "I am separated", "I am divorced or widowed"]

GENDER_ANSWERS = ["Male", "Female"]

PARENT_SCHOOL_1_ANSWERS = ["Middle school junior high school", "High school", "College or beyond", "Other/unknown"]

PARENT_SCHOOL_2_ANSWERS = ["Middle school junior high school", "High school", "College or beyond", "Other/unknown"]

HS_COMPLETION_ANSWERS = ["High school diploma", "General Educational Development (GED) certificate or state certificate", "Homeschooled", "None of the above"]

BACH_DEGREE_ANSWERS = ["Yes", "No"]

COLLEGE_GRADE_ANSWERS = ["Never attended college and 1st year undergraduate", "Attended college before and 1st year undergraduate", "2nd year undergraduate/sophomore", "3rd year undergraduate/junior", "4th year undergraduate/senior", "5th year/other undergraduate", "1st year graduate/professional", "Continuing graduate/professional or beyond"]

STATE_RESIDENCY_VER_ANSWERS = ["Yes", "No"]

SELECTIVE_SERVICE_ANSWERS = ["Yes", "No"]

DRUG_CHARGES_ANSWERS = ["Yes", "No"]

DEGREE_OPTION_ANSWERS = ["1st bachelor's degree", "2nd bachelor's degree", "Associate's degree (occupational or technical program)", "Associate's degree (general education or transfer program)", "Certificate or diploma (occupational, technical, or education program of less than two years)", "Certificate or diploma (occupational, technical, or education program of two or more years) 7)Teaching credential (nondegree program)", "Graduate or professional degree) 9)Other/undecided"]

WORK_STUDY_ANSWERS = ["Yes", "No"]

TAX_FORM_ANSWERS = ["IRS 1040", "IRS 1040A or 1040EZ", "A foreign tax return", "A tax return with Puerto Rico, another US territory, or Freely Associated State"]

FILING_STATUS_ANSWERS = ["Single", "Head of household", "Married - filed joint return", "Married - filed separate return", "Qualifying widow(er)", "Don't know" ]

ELIGIBILITY_1040_ANSWERS = ["Yes", "No", "Don't know"]

BEFORE_1994_ANSWERS = ["Yes", "No"]

ACTIVE_MILITARY_ANSWERS = ["Yes", "No"]

VETERAN_STATUS_ANSWERS = ["Yes", "No"]

DEPENDENT_CHILDREN_ANSWERS = ["Yes", "No"]

OTHER_DEPENDENTS_ANSWERS = ["Yes", "No"]

PARENTAL_LOSS_ANSWERS = ["Yes", "No"]

EMANCIPATED_MINOR_ANSWERS = ["Yes", "No"]

LEGAL_GUARDIANSHIP_ANSWERS = ["Yes", "No"]

SCHOOL_HOMELESS_ANSWERS = ["Yes", "No"]

SHELTER_HOMELESS_ANSWERS = ["Yes", "No"]

RUNAWAY_HOMELESS_ANSWERS = ["Yes", "No"]

PARENT_MARITAL_STATUS_ANSWERS = ["Married or remarried", "Never married", "Divorced or separated", "Widowed", "Unmarried and both parents living together"]

PARENT_STATE_RESIDENCY_VER_ANSWERS = ["Yes", "No"]

MEDICAID_SSI_ANSWERS = ["Yes", "No"]

FOOD_STAMPS_ANSWERS = ["Yes", "No"]

FREE_LUNCH_ANSWERS = ["Yes", "No"]

WELFARE_ANSWERS = ["Yes", "No"]

WIC_ANSWERS = ["Yes", "No"]

PARENT_TAX_COMPLETION_ANSWERS = ["My parents have already completed their return", "My parents will file but have not yet completed their return", "My parents are not going to file their return"]

PARENT_TAX_FORM_ANSWERS = ["IRS 1040", "IRS 1040A or 1040EZ", "A foreign tax return", "A tax return with Puerto Rico, another US territory or Freely Associated State"]

PARENT_FILING_STATUS_ANSWERS = ["Single", "Head of household", "Married - filed joint return", "Married, filed separate return", "Qualifying widow(er)", "Don't know"]

PARENT_1040_ELIGIBILITY_ANSWERS = ["Yes", "No", "Don't know"]

PARENT_DISLOCATED_WORKER_ANSWERS = ["Yes", "No", "Don't know"]

INDEPENDENT_MEDICAID_SSI_ANSWERS = ["Yes", "No"]

INDEPENDENT_FOOD_STAMPS_ANSWERS = ["Yes", "No"]

INDEPENDENT_FREE_LUNCH_ANSWERS = ["Yes", "No"]

INDEPENDENT_WELFARE_ANSWERS = ["Yes", "No"]

INDEPENDENT_WIC_ANSWERS = ["Yes", "No"]

INDEPENDENT_DISLOCATED_WORKER_ANSWERS = ["Yes", "No"]

INDEPENDENT_MARITAL_STATUS_ANSWERS = ["Yes", "No"]

INDEPENDENT_DEGREE_OPTION_ANSWERS = ["Yes", "No"]

end
