class FormsController < ApplicationController


def generate_pdf
  pdftk = PdfForms.new('/usr/local/bin/pdftk')
  p pdftk.get_field_names "#{Rails.root}/public/PdfFafsa17-18.pdf"

# FAFSA Step One (Student)

  question1 = Question.find_by(name: "last_name")
  response1 = UserResponse.find_by(user: current_user, question: question1).response || ""

  question2 = Question.find_by(name: "first_name")
  response2 = UserResponse.find_by(user: current_user, question: question2).response

  question3 = Question.find_by(name: "middle_initial")
  response3 = UserResponse.find_by(user: current_user, question: question3).response

  question4 = Question.find_by(name: "street_address")
  response4 = UserResponse.find_by(user: current_user, question: question4).response

  question5 = Question.find_by(name: "city")
  response5 = UserResponse.find_by(user: current_user, question: question5).response

  question6 = Question.find_by(name: "state")
  response6 = UserResponse.find_by(user: current_user, question: question6).response

  question7 = Question.find_by(name: "zip_code")
  response7 = UserResponse.find_by(user: current_user, question: question7).response

  question8 = Question.find_by(name: "social")
  response8 = UserResponse.find_by(user: current_user, question: question8).response

  question9 = Question.find_by(name: "birth_date")
  response9 = UserResponse.find_by(user: current_user, question: question9).response

  question10 = Question.find_by(name: "phone_number")
  response10 = UserResponse.find_by(user: current_user, question: question10).response

  question11 = Question.find_by(name: "license_number")
  response11 = UserResponse.find_by(user: current_user, question: question11).response

  question12 = Question.find_by(name: "license_state")
  response12 = UserResponse.find_by(user: current_user, question: question12).response

  question13 = Question.find_by(name: "email_address")
  response13 = UserResponse.find_by(user: current_user, question: question13).response

  question14 = Question.find_by(name: "citizenship")
  response14 = UserResponse.find_by(user: current_user, question: question14).response

  question15 = Question.find_by(name: "alien_number")
  response15 = UserResponse.find_by(user: current_user, question: question15).response

  question16 = Question.find_by(name: "marital-status")
  response16 = UserResponse.find_by(user: current_user, question: question16)

  question17 = Question.find_by(name: "marital_date")
  response17 = UserResponse.find_by(user: current_user, question: question17).response

  question18 = Question.find_by(name: "state_residency")
  response18 = UserResponse.find_by(user: current_user, question: question18).response

  question19 = Question.find_by(name: "state_residency_ver")
  response19 = UserResponse.find_by(user: current_user, question: question19).response

  question20 = Question.find_by(name: "state_residency_date")
  response20 = UserResponse.find_by(user: current_user, question: question20).response

  question21 = Question.find_by(name: "gender")
  response21 = UserResponse.find_by(user: current_user, question: question21).response

  question22 = Question.find_by(name: "selective_service")
  response22 = UserResponse.find_by(user: current_user, question: question22).response

  question23 = Question.find_by(name: "drug_charges")
  response23 = UserResponse.find_by(user: current_user, question: question23).response

  question24 = Question.find_by(name: "parent_school_1")
  response24 = UserResponse.find_by(user: current_user, question: question24).response

  question25 = Question.find_by(name: "parent_school_2")
  response25 = UserResponse.find_by(user: current_user, question: question25).response

  question26 = Question.find_by(name: "hs_completion")
  response26 = UserResponse.find_by(user: current_user, question: question26).response

  question27 = Question.find_by(name: "hs_name")
  response27 = UserResponse.find_by(user: current_user, question: question27).response

  question28 = Question.find_by(name: "bach_degree")
  response28 = UserResponse.find_by(user: current_user, question: question28).response

  question29 = Question.find_by(name: "college_grade")
  response29 = UserResponse.find_by(user: current_user, question: question29).response

  question30 = Question.find_by(name: "degree_option")
  response30 = UserResponse.find_by(user: current_user, question: question30).response

  question31 = Question.find_by(name: "work_study")
  response31 = UserResponse.find_by(user: current_user, question: question31).response

  # FAFSA Step 2 (Student Tax Info)

  question33 = Question.find_by(name: "tax_form")
  response33 = UserResponse.find_by(user: current_user, question: question33).try(:response)

  question34 = Question.find_by(name: "filing_status")
  response34 = UserResponse.find_by(user: current_user, question: question34).try(:response)

  question35 = Question.find_by(name: "eligibility_1040")
  response35 = UserResponse.find_by(user: current_user, question: question35).try(:response)

  question36 = Question.find_by(name: "adjusted_gross_income")
  response36 = UserResponse.find_by(user: current_user, question: question36).try(:response)

  question37 = Question.find_by(name: "income_tax")
  response37 = UserResponse.find_by(user: current_user, question: question37).try(:response)

  question38 = Question.find_by(name: "exemptions")
  response38 = UserResponse.find_by(user: current_user, question: question38).try(:response)

  question39 = Question.find_by(name: "total_earnings")
  response39 = UserResponse.find_by(user: current_user, question: question39).try(:response)

  question40 = Question.find_by(name: "spouse_total_earnings")
  response40 = UserResponse.find_by(user: current_user, question: question40).try(:response)

  question41 = Question.find_by(name: "account_balance")
  response41 = UserResponse.find_by(user: current_user, question: question41).try(:response)

  question42 = Question.find_by(name: "real_estate")
  response42 = UserResponse.find_by(user: current_user, question: question42).try(:response)

  question43 = Question.find_by(name: "business_investments")
  response43 = UserResponse.find_by(user: current_user, question: question43).try(:response)

  question44a = Question.find_by(name: "education_credits")
  response44a = UserResponse.find_by(user: current_user, question: question44a).try(:response)

  question44b = Question.find_by(name: "child_support_paid")
  response44b = UserResponse.find_by(user: current_user, question: question44b).try(:response)

  question44c = Question.find_by(name: "need_based_employment")
  response44c = UserResponse.find_by(user: current_user, question: question44c).try(:response)

  question44d = Question.find_by(name: "grants_and_scholarships")
  response44d = UserResponse.find_by(user: current_user, question: question44d).try(:response)

  question44e = Question.find_by(name: "combat_pay")
  response44e = UserResponse.find_by(user: current_user, question: question44e).try(:response)

  question44f = Question.find_by(name: "education_coop")
  response44f = UserResponse.find_by(user: current_user, question: question44f).try(:response)

  question45a = Question.find_by(name: "pension_and_retirement")
  response45a = UserResponse.find_by(user: current_user, question: question45a).try(:response)

  question45b = Question.find_by(name: "ira_money")
  response45b = UserResponse.find_by(user: current_user, question: question45b).try(:response)

  question45c = Question.find_by(name: "child_support_received")
  response45c = UserResponse.find_by(user: current_user, question: question45c).try(:response)

  question45d = Question.find_by(name: "tax_exempt_income")
  response45d = UserResponse.find_by(user: current_user, question: question45d).try(:response)

  question45e = Question.find_by(name: "untaxed_distributions")
  response45e = UserResponse.find_by(user: current_user, question: question45e).try(:response)

  question45f = Question.find_by(name: "untaxed_pensions")
  response45f = UserResponse.find_by(user: current_user, question: question45f).try(:response)

  question45g = Question.find_by(name: "living_allowances")
  response45g = UserResponse.find_by(user: current_user, question: question45g).try(:response)

  question45h = Question.find_by(name: "veteran_benefits")
  response45h = UserResponse.find_by(user: current_user, question: question45h).try(:response)

  question45i = Question.find_by(name: "untaxed_income")
  response45i = UserResponse.find_by(user: current_user, question: question45i).try(:response)

  question45j = Question.find_by(name: "money_received")
  response45j = UserResponse.find_by(user: current_user, question: question45j).try(:response)

  question46 = Question.find_by(name: "before_1994")
  response46 = UserResponse.find_by(user: current_user, question: question46).try(:response)

  question47 = Question.find_by(name: "independent_marital_status")
  response47 = UserResponse.find_by(user: current_user, question: question47).response

  question48 = Question.find_by(name: "independent_degree_option")
  response48 = UserResponse.find_by(user: current_user, question: question48).response

  question49 = Question.find_by(name: "active_military")
  response49 = UserResponse.find_by(user: current_user, question: question49).response

  question50 = Question.find_by(name: "veteran_status")
  response50 = UserResponse.find_by(user: current_user, question: question50).response

  question51 = Question.find_by(name: "dependent_children")
  response51 = UserResponse.find_by(user: current_user, question: question51).response

  question52 = Question.find_by(name: "other_dependents")
  response52 = UserResponse.find_by(user: current_user, question: question52).response

  question53 = Question.find_by(name: "parental_loss")
  response53 = UserResponse.find_by(user: current_user, question: question53).response

  question54 = Question.find_by(name: "emancipated_minor")
  response54 = UserResponse.find_by(user: current_user, question: question54).response

  question55 = Question.find_by(name: "legal_guardianship")
  response55 = UserResponse.find_by(user: current_user, question: question55).response

  question56 = Question.find_by(name: "school_homeless")
  response56 = UserResponse.find_by(user: current_user, question: question56).try(:response)

  question57 = Question.find_by(name: "shelter_homeless")
  response57 = UserResponse.find_by(user: current_user, question: question57).try(:response)

  question58 = Question.find_by(name: "runaway_homeless")
  response58 = UserResponse.find_by(user: current_user, question: question58).try(:response)

  # FAFSA Step 3 ()

  pdftk.fill_form "#{Rails.root}/public/PdfFafsa17-18.pdf", "#{Rails.root}/public/#{current_user.id}_fafsa.pdf",
    {"topmostSubform[0].Page3[0].Q1_Last_Name[0]" => response1,
    "topmostSubform[0].Page3[0].Q2_Your_first_name[0]" => response2,
    "topmostSubform[0].Page3[0].Q3_Middle_Initial[0]" => response3,
    "topmostSubform[0].Page3[0].Q4_Address[0]" => response4,
    "topmostSubform[0].Page3[0].Q5_City[0]" => response5,
    "topmostSubform[0].Page3[0].Q6_State_Abbreviation[0]" => response6,
    "topmostSubform[0].Page3[0].Q7_Zip_Code[0]" => response7,
    # insert answers for 8a, 8b, and 8c
    # insert answers for 9a, 9b, and 9c
    # insert answers for 10_1, 10_2, and 10_3
    "topmostSubform[0].Page3[0].Q11_DriverLicenseNumber[0]" => response11,
    "topmostSubform[0].Page3[0].Q12_DriverLicenseState[0]" => response12,
    "topmostSubform[0].Page3[0].Q13_StudentEmail[0]" => response13,
    "topmostSubform[0].Page3[0].Q14_Citizenship[0]" => response14,
    "topmostSubform[0].Page3[0].Q15_Alien_Registration_Number[0]" => response15,
    "topmostSubform[0].Page3[0].Q16_St_Mar_Status[0]" => response16,
    # insert answers for 17_1 and 17_2
    "topmostSubform[0].Page3[0].Q18_State_of_legal_residence[0]" => response18,
    "topmostSubform[0].Page3[0].Q19_Legal_Resident_By[0]" => response19,
    # insert answers for 20_1 and 20_2
    "topmostSubform[0].Page3[0].Q21_Male-Female[0]" => response21,
    "topmostSubform[0].Page3[0].Q22_SelSerReg[0]" => response22,
    "topmostSubform[0].Page3[0].Q23_DrugQuestion[0]" => response23,
    "topmostSubform[0].Page3[0].Q24_HgstSchFA[0]" => response24,
    "topmostSubform[0].Page3[0].Q25_HgstSchMo[0]" => response25,
    "topmostSubform[0].Page3[0].Q26_GradCompStatus2[0]" => response26,
    # insert answers for 27
    "topmostSubform[0].Page4[0].Q28_FrstBach[0]" => response28,
    "topmostSubform[0].Page4[0].Q29_gradelevel[0]" => response29,
    "topmostSubform[0].Page4[0].Q30_Deg-Cert[0]" => response30,
    "topmostSubform[0].Page4[0].Q31_WorkStudy[0]" => response31,
    # "topmostSubform[0].Page4[0].Q32_St_Complete_Tax[0]" => response32,
    "topmostSubform[0].Page4[0].Q33_Type_Tax_Form[0]" => response33,
    "topmostSubform[0].Page4[0].Q34_StudTaxFilingStatus[0]" => response34,
    "topmostSubform[0].Page4[0].Q35-Eligfora1040[0]" => response35,
    "topmostSubform[0].Page4[0].Q36_AGI[0]" => response36,
    "topmostSubform[0].Page4[0].Q37-IncomeTax_Paid[0]" => response37,
    "topmostSubform[0].Page4[0].Q38_Exemptions[0]" => response38,
    "topmostSubform[0].Page4[0].Q39_St_Earning_from_working[0]" => response39,
    "topmostSubform[0].Page4[0].Q40_Sp_Earnings_from_Working[0]" => response40,
    "topmostSubform[0].Page4[0].Q41_Cash_savings_checking[0]" => response41,
    "topmostSubform[0].Page4[0].Q42_Investments_Net_worth[0]" => response42,
    "topmostSubform[0].Page4[0].Q43_Bus_Farm_net_worth[0]" => response43,
    "topmostSubform[0].Page5[0].Q44a_SAFIa[0]" => response44a,
    "topmostSubform[0].Page5[0].Q44b_SAFIb[0]" => response44b,
    "topmostSubform[0].Page5[0].Q44c_SAFIc[0]" => response44c,
    "topmostSubform[0].Page5[0].Q44d_SAFId[0]" => response44d,
    "topmostSubform[0].Page5[0].Q44e_SAFIe[0]" => response44e,
    "topmostSubform[0].Page5[0].Q44f_SAFIf[0]" => response44f,
    "topmostSubform[0].Page5[0].Q45a_SUIa[0]" => response45a,
    "topmostSubform[0].Page5[0].Q45b_SUIb[0]" => response45b,
    "topmostSubform[0].Page5[0].Q45c_SUIc[0]" => response45c,
    "topmostSubform[0].Page5[0].Q45d_SUId[0]" => response45d,
    "topmostSubform[0].Page5[0].Q45e_SUIe[0]" => response45e,
    "topmostSubform[0].Page5[0].Q45f_SUIf[0]" => response45f,
    "topmostSubform[0].Page5[0].Q45g_SUIg[0]" => response45g,
    "topmostSubform[0].Page5[0].Q45h_SUIh[0]" => response45h,
    "topmostSubform[0].Page5[0].Q45i_SUIi[0]" => response45i,
    "topmostSubform[0].Page5[0].Q45j_SUIj[0]" => response45j,
    "topmostSubform[0].Page5[0].Q46_BornBefore[0]" => response46,
    "topmostSubform[0].Page5[0].Q47_RU_Married[0]" => response47,
    "topmostSubform[0].Page5[0].Q48_Master_or_Doctorate[0]" => response48,
    "topmostSubform[0].Page5[0].Q49_Serving_Active_Duty[0]" => response49,
    "topmostSubform[0].Page5[0].Q50_Veteran[0]" => response50,
    "topmostSubform[0].Page5[0].Q51_Children_Rec_half_support[0]" => response51,
    "topmostSubform[0].Page5[0].Q52_Others_Rec_half_support[0]" => response52,
    "topmostSubform[0].Page5[0].Q53_Foster_Care[0]" => response53,
    "topmostSubform[0].Page5[0].Q54_Emancipated_Minor[0]" => response54,
    "topmostSubform[0].Page5[0].Q55_Legal_Guardianship[0]" => response55,
    "topmostSubform[0].Page5[0].Q56_Unaccompanied_Youth[0]" => response56,
    "topmostSubform[0].Page5[0].Q57_Unaccompanied_Youth_Homeless_Shelter-HUD[0]" => response57,
    "topmostSubform[0].Page5[0].Q58_Unaccompanied_Youth_Homeless-At-Risk_Self_Supporting[0]" => response58}

end
end

# pdftk.fill_form "#{Rails.root}/public/PdfFafsa1718.pdf", "#{current_user.id}_fafsa.pdf", "topmostSubform[0].Page3[0].Q1_Last_Name[0]" => "Clardige"

# pdftk = PdfForms.new('pdftk')
# pdftk.get_field_names "#{Rails.root}/public/PdfFafsa17-18.pdf"
