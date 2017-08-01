# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

questions = [

# Before FAFSA is started, generate a pop up that provides user with basic information about the FAFSA. 4 sections about you, your living situation, your finance's, and your parent's finances. List the relevant documents or difficult to access information that they will need to complete the FAFSA and inform them that they may save their responses and continue at a later time.

# SECTION 1: BASIC STUDENT INFO
# ALL users answer


  {position: 1, name: 'last_name' , text: 'Full legal last name', response_type: 'String', section: 1},
  {position: 2, name: 'first_name' , text: 'Full legal first name', response_type: 'String', section: 1},
  {position: 3, name: 'middle_initial' , text: 'Middle initial', response_type: 'String', section: 1},
  {position: 4, name: 'street_address' , text: 'Street address (include apartment number)', response_type: 'String', section: 1},
  {position: 5, name: 'city' , text: 'City', response_type: 'String', section: 1},
  {position: 6, name: 'state' , text: 'State', response_type: 'String', section: 1},
  {position: 7, name: 'zip_code' , text: 'Zip code', response_type: 'Integer', section: 1},
  {position: 8, name: 'social' , text: 'Your social security number (format: 123-45-6789)', response_type: 'String', section: 1},
  {position: 9, name: 'birth_date' , text: 'Your date of birth (format: MM/DD/YYYY)', response_type: 'String', section: 1},
  {position: 10, name: 'phone_number' , text: 'Your telephone number (format: (123)-456-7890)', response_type: 'String', section: 1},
  {position: 11, name: 'license_number' , text: "Your driver's license number (if you have one)", response_type: 'String', section: 1},
  {position: 12, name: 'license_state' , text: "Your driver's license state (two-letter abbreviation)", response_type: 'String', section: 1},
  {position: 13, name: 'email_address' , text: 'Your email address', response_type: 'String', section: 1},
  {position: 14, name: 'citizenship' , text: 'Are you a US citizen? Mark only one', response_type: 'Multiple choice', section: 1},
  # If user is not a citizen or eligible non-citizen, generate a pop up explaining that they will not be eligible for federal financial aid, but should still complete the FAFSA because they may be eligible for state financial aid or school-based financial aid.
  {position: 15, name: 'alien_number' , text: 'Alien Registration Number', response_type: 'String', section: 1},
  {position: 16, name: 'marital_status' , text: 'What is your marital status as of today?', response_type: 'Multiple choice', section: 1},
  {position: 17, name: 'marital_date' , text: 'Month and year you were married, remarried, separated, divorced, or widowed (format: MM/YYYY)', response_type: 'String', section: 1},
  {position: 18, name: 'state_residency' , text: 'What is your state of legal residence? (two-letter abbreviation)', response_type: 'String', section: 1},
  {position: 19, name: 'state_residency_ver' , text: 'Have you been a legal resident of this state for at least five years?', response_type: 'Multiple choice', section: 1},
  {position: 20, name: 'state_residency_date' , text: 'If the answer to question 19 is "No," give the month and year you became a legal resident of that state (Format: MM/YYYY)', response_type: 'String', section: 1},
  {position: 21, name: 'gender' , text: 'Are you male or female?', response_type: 'Multiple choice', section: 1},
  {position: 22, name: 'selective_service' , text: 'Most male students must register with the Selective Service System to receive federal aid. If you are male, age 18-25 and not registered, choose yes and we will register you.', response_type: 'Multiple choice', section: 1},
  {position: 23, name: 'drug_charges' , text: 'Have you been convicted for the possession or sale of illegal drugs for an offense that occurred while you were receiving federal student aid (such as grants, work-study, or loans)? ', response_type: 'Multiple choice', section: 1},
  {position: 24, name: 'parent_school_1' , text: 'Highest school completed by Parent 1', response_type: 'Multiple choice', section: 1},
  {position: 25, name: 'parent_school_2' , text: 'Highest school completed by Parent 2', response_type: 'Multiple choice', section: 1},
  {position: 26, name: 'hs_completion' , text: 'What will your high school completion status be when you begin college in the 2017-2018 school year?', response_type: 'Multiple choice', section: 1},
  {position: 27, name: 'hs_name' , text: 'What is the name of the high school where you received or will receive your high school diploma? Enter the complete name of the school and the city and state where the high school is located (Example: Miami Edison Senior High School, Miami, FL)', response_type: 'String', section: 1},
  {position: 28, name: 'bach_degree' , text: "Will you have your first bachelor's degree before you begin the 2017-2018 school year?", response_type: 'Multiple choice', section: 1},
  {position: 29, name: 'college_grade' , text: 'What will your college grade level be when you begin the 2017-2018 school year?', response_type: 'Multiple choice', section: 1},
  {position: 30, name: 'degree_option' , text: 'What degree or certificate will you be working on when you begin the 2017-2018 school year?', response_type: 'Multiple choice', section: 1},
  {position: 31, name: 'work_study' , text: 'Are you interested in being considered for work-study?', response_type: 'Multiple choice', section: 1},


  # SECTION 2: DEPENDENCY QUESTIONS
  # ALL users answer

  # If YES to any of these, skip ALL section 4 questions
  # If NO to all Section 2 questions, skip Section
  # Generate pop-up informing user of their dependency status after finishing this section)


    {position: 46, name: 'before_1994' , text: 'Were you born before January 1, 1994?', response_type: 'Multiple choice', section: 2},
    # this should be able to be answered by question 9
    {position: 47, name: 'independent_marital_status' , text: 'As of today, are you married? (Also answer "Yes" if you are separated but not divorced)', response_type: 'Multiple choice', section: 2},
    # this should be able to be answered by question 16
    {position: 48, name: 'independent_degree_option' , text: "At the beginning of the 2017-2018 school year, will you be working on a master's or doctorate program (such as an MA, MBA, MD, JD, PHD, EdD, graduate certificate, etc?)", response_type: 'Multiple choice', section: 2},
    # this should be able to be answered by question 30
    {position: 49, name: 'active_military' , text: 'Are you currently serving on active duty in the US Armed Forces for purposes other than training?', response_type: 'Multiple choice', section: 2},
    {position: 50, name: 'veteran_status' , text: 'Are you a veteran of the US Armed Forces?', response_type: 'Multiple choice', section: 2},
    {position: 51, name: 'dependent_children' , text: 'Do you now have or will you have children who will receive more than half of their support from you between July 1, 2017 and June 30, 2018?', response_type: 'Multiple choice', section: 2},
    {position: 52, name: 'other_dependents' , text: 'Do you have dependents (other than your children or spouse) who live with you and who receive more than half of their support from you, now and through June 30, 2018?', response_type: 'Multiple choice', section: 2},
    {position: 53, name: 'parental_loss' , text: 'At any time since you turned age 13, were both your parents deceased, were you in foster care or were you a dependent or ward of the court?', response_type: 'Multiple choice', section: 2},
    {position: 54, name: 'emancipated_minor' , text: 'As determined by a court in your state of legal residence, are you or were you an emancipated minor?', response_type: 'Multiple choice', section: 2},
    {position: 55, name: 'legal_guardianship' , text: 'Does someone other than your parent or stepparent have legal guardianship of you, as determined by a court in your state of legal residence?', response_type: 'Multiple choice', section: 2},
    {position: 56, name: 'school_homeless' , text: 'At any time on or after July 1, 2016, did your high school or school district homeless liaison determine that you were an unaccompanied youth who was homeless or were self-supporting and at risk of being homeless?', response_type: 'Multiple choice', section: 2},
    {position: 57, name: 'shelter_homeless' , text: 'At any time on or after July 1, 2016, did the directory of an emergency shelter or transitional housing program funded by the US Department of Housing and Urban Development determine that you were an unaccompanied youth who was homeless or were self-supporting and at risk of being homeless?', response_type: 'Multiple choice', section: 2},
    {position: 58, name: 'runaway_homeless' , text: 'At any time on or after July 1, 2016, did the director of a runaway or homeless youth basic center or transitional living program determine that you were an unaccompanied youth who was homeless or were self-supporting and at risk of being homeless?', response_type: 'Multiple choice', section: 2},



# SECTION 3: STUDENT FINANCIAL INFO (NON TAX)
# ALL users answer


{position: 41, name: 'account_balance' , text: "As of today, what is your total current balance of cash, savings, and checking accounts?", response_type: 'Integer', section: 3},
{position: 42, name: 'real_estate' , text: "As of today, what is the current value of your investments, including real estate? Don't include the home you live in. If you do not own any additional properties, put 0.", response_type: 'Integer', section: 3},
{position: 43, name: 'business_investments' , text: "As of today, what is the net worth of your (and spouse's) current businesses and/or investment farms? Don't include a family farm or family business with 100 or fewer full-time or full-time equivalent employees. If you ", response_type: 'Integer', section: 3},
{position: 44, name: 'child_support_paid' , text: "Child support paid because of divorce or separation or as a result of a legal requirement. Don't include support for children in your household, as reported in question 95.", response_type: 'Integer', section: 3},
{position: 44, name: 'need_based_employment' , text: 'Taxable earnings from need-based employment programs, such as Federal Work-Study and need-based employment programs of fellowships and assistantships', response_type: 'Integer', section: 3},
{position: 44, name: 'grants_and_scholarships' , text: 'Taxable college grant and scholarship aid reported to the IRS in your adjusted gross income. Includes AmeriCorps benefits (awards, living allowances and interest accrual payments), as well as grant and scholarship portions of fellowships and assistantships.', response_type: 'Integer', section: 3},
{position: 44, name: 'combat_pay' , text: "Combat pay or special combat pay. Only enter the amount that was taxable and included in your adjusted gross income. Don't include untaxed combat pay.", response_type: 'Integer', section: 3},
{position: 44, name: 'education_coop' , text: 'Earnings from work under a cooperative education program offered by a college.', response_type: 'Integer', section: 3},
{position: 45, name: 'child_support_received' , text: "Child support received for any of your children. Don't include foster care or adoption payments.", response_type: 'Integer', section: 3},
{position: 45, name: 'living_allowances' , text: "Housing, food and other living allowances paid to members of the military, clergy and others (including cash payments and cash value of benefits). Don't include the value of on-base military housing or the value of a basic military allowance for housing.", response_type: 'Integer', section: 3},
{position: 45, name: 'veteran_benefits' , text: 'Veterans noneducation benefits, such as Disability, Death Pension, or Dependency & Indemnity Compensation (DIC) and/or VA Educational Work-Study Allowances.', response_type: 'Integer', section: 3},
{position: 45, name: 'untaxed_income' , text: "Other untaxed income not reported in items 45a through 45h, such as worker's compensation, disability benefits, etc. Also include the untaxed portions of health savings accounts from IRS Form 1040 - line 25. Don't include extended foster care benefits, student aid, earned income credit, additional child tax credit, welfare payments, untaxed Social Security benefits, Supplemental Security Income, Workforce Innovation and Opportunity Act education, benefits, on-base military housing or a military housing allowance, combat pay, benefits from flexible spending arrangements (e.g. cafeteria plans), foreign income exclusion or credit for federal tax on special fuels.", response_type: 'Integer', section: 3},
{position: 45, name: 'money_received', text: 'Money received, or paid on your behalf (i.e. bills) not reported elsewhere on this form. This includes money that you received from a parent or other person whose financial information is not reported on this form and that is not part of a legal child support agreement.', response_type: 'Integer', section: 3},



# SECTION 4: PARENT FINANCIAL INFO (NON TAX)
#DEPENDENT students answer



{position: 59, name: 'parent_marital_status' , text: 'As of today, what is the marital status of your parents?', response_type: 'Multiple choice', section: 4},
{position: 60, name: 'parent_marital_date' , text: 'Month and year they were married, remarried, separated, divorced or widowed', response_type: 'Integer', section: 4},
{position: 61, name: 'parent_1_ssn' , text: 'Parent 1 Social Security Number', response_type: 'Integer', section: 4},
{position: 62, name: 'parent_1_last_name' , text: 'Parent 1 full legal last name', response_type: 'String', section: 4},
{position: 63, name: 'parent_1_first_init' , text: 'Parent 1 first initial', response_type: 'String', section: 4},
{position: 64, name: 'parent_1_dob' , text: 'Parent 1 date of birth', response_type: 'String', section: 4},
{position: 65, name: 'parent_2_ssn' , text: 'Parent 2 Social Security Number', response_type: 'String', section: 4},
{position: 66, name: 'parent_2_last_name' , text: 'Parent 2 last name', response_type: 'String', section: 4},
{position: 67, name: 'parent_2_first_init' , text: 'Parent 2 first initial', response_type: 'String', section: 4},
{position: 68, name: 'parent_2_dob' , text: 'Parent 2 date of birth', response_type: 'String', section: 4},
{position: 69, name: 'parent_email' , text: "Your parents' e-mail address. If you provide your parents' email address, we will let them know your FAFSA has been processed. This e-mail address will also be shared with your state and the colleges listed on your FAFSA to allow them to electronically communicate with your parents.", response_type: 'String', section: 4},
{position: 70, name: 'parent_state_residency' , text: "What is your parents' state of legal residence? (Two letter abbreviation)", response_type: 'String', section: 4},
{position: 71, name: 'parent_state_residency_ver' , text: 'Have your parents been legal residents of this state for at least five years?', response_type: 'Multiple choice', section: 4},
{position: 72, name: 'parent_state_residency_date' , text: 'If the answer to question 71 is "No," give the month and year legal residency began for the parent who has lived in the state the longest. (Format: MM/YYYY)', response_type: 'String', section: 4},
{position: 73, name: 'parent_household_size' , text: "How many people are in your parents' household? Include yourself, even if you don't live with your parents, your parents, your parents' other children (even if they do not live with your parents, and any other people if they now live with you and your parents provide more than half of their support", response_type: 'Integer', section: 4},
{position: 74, name: 'household_college_students' , text: "How many people in your parents' household (from question 73) will be college students between July 1, 2017 and June 30, 2018? Always count yourself as a college student. Do not include your parents. Do not include siblings who are in US military service academies. You may include others only if they will attend, at least half-time in 2017, a program that leads to a college degree or certificate.", response_type: 'Integer', section: 4},
{position: 75, name: 'medicaid_ssi' , text: 'At any time during 2015 or 2016, did you, your parents, or anyone in your parents’ household (from question 73) receive Medicaid or Supplemental Security Income (SSI)?', response_type: 'Multiple choice', section: 4},
{position: 76, name: 'food_stamps' , text: 'At any time during 2015 or 2016, did you, your parents, or anyone in your parents’ household (from question 73) receive benefits from Supplemental Nutrition Assistance Program (SNAP)?', response_type: 'Multiple choice', section: 4},
{position: 77, name: 'free_lunch' , text: 'At any time during 2015 or 2016, did you, your parents, or anyone in your parents’ household (from question 73) receive Free or Reduced Price School Lunch?', response_type: 'Multiple choice', section: 4},
{position: 78, name: 'welfare' , text: 'At any time during 2015 or 2016, did you, your parents, or anyone in your parents’ household (from question 73) receive benefits from Temporary Assistance for Needy Families (TANF)?', response_type: 'Multiple choice', section: 4},
{position: 79, name: 'wic' , text: 'At any time during 2015 or 2016, did you, your parents, or anyone in your parents’ household (from question 73) receive benefits from the Special Supplemental Nutrition Program for Women, Infants, and Children (WIC)?', response_type: 'Multiple choice', section: 4},
{position: 80, name: 'parent_tax_completion' , text: 'For 2015, have your parents completed their IRS income tax return or another tax return listed in question 81?', response_type: 'Multiple choice', section: 4},
{position: 84, name: 'parent_dislocated_worker' , text: 'As of today, is either of your parents a dislocated worker?', response_type: 'Multiple choice', section: 4},
{position: 90, name: 'parent_account_balance' , text: "As of today, what is your parents' total current balance of cash, savings, and checking accounts? Don't include student financial aid.", response_type: 'Integer', section: 4},
{position: 91, name: 'parent_real_estate' , text: "As of today, what is the net worth of your parents' investments, including real estate? Don't include the home in which your parents live.", response_type: 'Integer', section: 4},
{position: 92, name: 'parent_business_investments' , text: "As of today, what is the net worth of your parents' current businesses and/or investment farms? Don't include a family farm or family business with 100 or fewer full-time or full-time equivalent employees.", response_type: 'Integer', section: 4},
{position: 93, name: 'parent_child_support_paid' , text: "Child support paid because of divorce or separation or as a result of a legal requirement. Don't incllude support for children in your parents' household, as reported in question 73.", response_type: 'Integer', section: 4},
{position: 93, name: 'parent_need_based_earnings' , text: "Your parents' taxable earnings from need-based employment programs, such as Federal Work-Study and need-based employment portions of fellowships and assistantships", response_type: 'Integer', section: 4},
{position: 93, name: 'parent_scholarship_aid' , text: "Your parents' taxable college grant and scholarship aid reported to the IRS in your parents' adjusted gross income. Includes AmeriCorps benefits (awards, living allowances and interest accrual payments), as well as grant and scholarship portions of fellowships and assistantships.", response_type: 'Integer', section: 4},
{position: 93, name: 'parent_combat_pay' , text: "Combat pay or special combat pay. Only enter the amount that was taxable and included in your parents' adjusted gross income. Don't include untaxed combat pay.", response_type: 'Integer', section: 4},
{position: 93, name: 'parent_education_coop' , text: 'Earnings from work under a cooperative education program offered by a college.', response_type: 'Integer', section: 4},
{position: 94, name: 'parent_living_allowances' , text: "Housing, food, and other living allowances paid to members of the military, clergy and others (including cash payments and cash value of benefits). Don't include the value of on-base military housing or the value of a basic military allowance for housing.", response_type: 'Integer', section: 4},
{position: 94, name: 'parent_veteran_benefits' , text: 'Veterans noneducation benefits, such as Disability, Death Pension, or Dependency & Indemnity Compensation (DIC)', response_type: 'Integer', section: 4},
{position: 94, name: 'parent_untaxed_income' , text: "Other untaxed income not reported in items 94a through 94h, such as workers' compensation, disability benefits, etc. Also include the untxed portions of health savings accounts from IRS Form 1040 - line 25. Don't included extended foster care benefits, student aid, earned income credit, additional child tax credit, welfare payments, untaxed Social Security benefits, Supplemental Security Income, Workforce Innovation and Opportunity A}, educational benefits, on base military housing or a military housing allowance, combat pay, benefits from flexible spending arrangements (e.g. cafeteria plans), foreign income exclusion or credit for federal tax on special fuels", response_type: 'Integer', section: 4},


# SECTION 5: INDEPENDENT STUDENT QUESTIONS
# INDEPENDENT students answer


  {position: 95, name: 'independent_household_size' , text: 'How many people are n your household? Include -yourself (and your spouse), -your children, if you will provide more than half of their support between July 1, 2017 and June 30, 2018, even if they do not live with you, and -other people if they now live with you, you provide more than half of their support and you will continue to provide more than half of their support between July 1, 2017 and June 30, 2018', response_type: 'Integer', section: 5},
  {position: 96, name: 'independent_college_students' , text: "How many people in your (and your spouse's) household (from question 95) will be college students between July 1, 2017 and June 30, 2018? Always count yourself as a college student. Do not include family members who are in the US military service accademies. Include others only if they will attend, at least half-time in 2017-2018, a program that leads to a college degree or certificate.", response_type: 'Integer', section: 5},
  {position: 97, name: 'independent_medicaid_ssi' , text: 'At any time during 2015 or 2016, did you (or your spouse) or anyone in your household (from question 95) receive benefits from Medicaid or Supplemental Security Income (SSI)?', response_type: 'Multiple choice', section: 5},
  {position: 98, name: 'independent_food_stamps' , text: 'At any time during 2015 or 2016, did you (or your spouse) or anyone in your household (from question 95) receive benefits from the Supplemental Nutrition Assistance Program (SNAP)?', response_type: 'Multiple choice', section: 5},
  {position: 99, name: 'independent_free_lunch' , text: 'At any time during 2015 or 2016, did you (or your spouse) or anyone in your household (from question 95) receive benefits from Free or Reduced Price School Lunch?', response_type: 'Multiple choice', section: 5},
  {position: 100, name: 'independent_welfare' , text: 'At any time during 2015 or 2016, did you (or your spouse) or anyone in your household (from question 95) receive benefits from Temporary Assistance for Needy Families (TANF)?', response_type: 'Multiple choice', section: 5},
  {position: 101, name: 'independent_wic' , text: 'At any time during 2015 or 2016, did you (or your spouse) or anyone in your household (from question 95) receive benefits from the Special Supplemental Nutrition Program for Women, Infants, and Children (WIC)', response_type: 'Multiple choice', section: 5},
  {position: 102, name: 'independent_dislocated_worker' , text: 'As of today, are you (or your spouse) a dislocated worker?', response_type: 'Multiple choice', section: 5},

 #SECTION 6: STUDENT FINANCIAL INFO (TAX - questions hidden from user, answers generated automatically from tax returns)
 # ALL students provide

  {position: 33, name: 'tax_form' , text: 'What income tax return did you file or will you file for 2015?', response_type: 'Multiple choice', section: 6},
  {position: 34, name: 'filing_status' , text: 'For 2015, what is or will be your tax filing status according to your tax return?', response_type: 'Multiple choice', section: 6},
  {position: 35, name: 'eligibility_1040' , text: 'If you have filed or will file a 1040, were you eligible to file a 1040A or 1040EZ?', response_type: 'Multiple Choice', section: 6},
  {position: 36, name: 'adjusted_gross_income' , text: "What was your (and your spouse's) adjusted gross income for 2015? Adjusted gross income is on IRS Form 1040 line 37; 1040A line 21; or 1040EZ line 4", response_type: 'Integer', section: 6},
  {position: 37, name: 'income_tax' , text: "Enter your (and your spouse's) income tax for 2015. Income tax amount is on IRS Form 1040 line 56 minus line 46; 1040A line 28 minus line 36; or 1040EZ line 10.", response_type: 'Integer', section: 6},
  {position: 38, name: 'exemptions' , text: "Enter your (and your spouse's) exemptions for 2015. Exemptions are on IRS Form 1040 line 6d or Form 1040A line 6d. For Form 1040EZ, leave this question blank", response_type: 'Integer', section: 6},
  {position: 39, name: 'total_earnings' , text: 'Questions 39 and 40 ask about earnings (wages, salaries, tips, etc) in 2015. Answer the questions whether or not a tax return was filed. This information may be on the W-2 forms or on the tax return selected in question 33; IRS Form 1040 - lines 7+12+18+Box 14 (Code A) of IRS Schedule K-1 (Form 1065); 1040A - line 7; or 1040EZ- line 1. If any individual earning item is negative, do not include that item in your calculation. How much did you ea}, from working in 2015?', response_type: 'Integer', section: 6},
  {position: 40, name: 'spouse_total_earnings' , text: 'How much did your spouse earn from working in 2015?', response_type: 'Integer', section: 6},
  {position: 44, name: 'education_credits' , text: 'Education credits (American Opportunity Tax Credit and Lifetime Learning Tax Credit) from IRS form 1040 - line 50 or 1040A - line 33', response_type: 'Integer', section: 6},
  {position: 45, name: 'pension_and_retirement' , text: "Payments to tax-deferred pension and retirement savings plans (paid directly or withheld from earnings), including, but not limited to, amounts reported on the W-2 forms in Boxes 12a through 12d, codes D, E, F, G, H and S. Don't include amounts reported in code DD (employer contributions toward employee health benefits).", response_type: 'Integer', section: 6},
  {position: 45, name: 'ira_money' , text: 'IRA deducations and payments to self-employed SEP, SIMPLE, Keogh and other qualified plans fromIRS Form 1040 - line 28 + line 32 or 1040A - line 17.', response_type: 'Integer', section: 6},
  {position: 45, name: 'tax_exempt_income' , text: 'Tax exempt interest income from IRS Form 1040 - line 8b or 1040A - line 8b', response_type: 'Integer', section: 6},
  {position: 45, name: 'untaxed_distributions' , text: 'Untaxed portions of IRA distributions from IRS Form 1040 - lines (15a minus 15b) or 1040A - lines (11a minus 11b). Exclude rollovers. If negative, enter a zero here.', response_type: 'Integer', section: 6},
  {position: 45, name: 'untaxed_pensions' , text: 'Untaxed portions of pensions from IRS Form 1040 - lines (16a minus 16b) or 1040A - lines (12a minus 12b). Exclude rollovers. If negative, enter a zero here.', response_type: 'Integer', section: 6},


# SECTION 7: PARENT FINANCIAL INFO (TAX - questions hidden from user, answers generated automatically from tax returns)
# DEPENDENT students provide ()


  {position: 81, name: 'parent_tax_form' , text: 'What income tax return did your parents file or will they file for 2015?', response_type: 'Multiple choice', section: 7},
  {position: 82, name: 'parent_filing_status' , text: "For 2015, what is or will be your parents' tax filing status according to their tax return?", response_type: 'Multiple choice', section: 7},
  {position: 83, name: 'parent_1040_eligibility' , text: 'If your parents have filed or will file a 1040, were they eligible to file a 1040A or 1040EZ?', response_type: 'Multiple choice', section: 7},
  {position: 85, name: 'parent_adjusted_gross' , text: "What was your parents' adjusted gross income for 2015? Adjusted gross income is on IRS Form 1040 - line 37; 1040A - line 21; or 1040EZ - line 4", response_type: 'Integer', section: 7},
  {position: 86, name: 'parent_income_tax' , text: "Enter your parents' income tax for 2015. Income tax amount is on IRS Form 1040 - line 56 minus line 46; 1040A - line 28 minus line 36; or 1040EZ - line 10", response_type: 'Integer', section: 7},
  {position: 87, name: 'parent_exemptions' , text: "Enter your parents' exemptions for 25. Exemptions are on IRS Form 1040 - line 6d or on Form 1040A - line 6d.", response_type: 'Integer', section: 7},
  {position: 88, name: 'parent_total_earnings' , text: 'How much did Parent 1 (father/mother/stepparent) earn from working in 2015?', response_type: 'Integer', section: 7},
  {position: 89, name: 'parent_2_total_earnings' , text: 'How much did Parent 2 (father/mother/stepparent) earn from working in 2015?', response_type: 'Integer', section: 7},
  {position: 93, name: 'parent_education_credits' , text: 'Education credits (American Opportunity Tax Credit and Lifetime Learning Tax Credit) from IRS Form 1040 - line 50 or 1040A - line 33.', response_type: 'Integer', section: 7},
  {position: 94, name: 'parent_pension' , text: "Payments to tax-deferred pension and retirement savings plans (paid directly or withheld from earnings), including, but not limited to, amounts reported on the W-2 forms in Boxes 12a through 12d, codes D, E, F, G, H, and S. Don't include amounts reported in code DD (employer contributions toward employee health benefits).", response_type: 'Integer', section: 7},
  {position: 94, name: 'parent_ira_money' , text: 'IRA deducations and payments to self-employed SEP, SIMPLE, Keogh and other qualified plans from IRS Form 1040 - line 28 + line 32 or 1040A - line 17.', response_type: 'Integer', section: 7},
  {position: 94, name: 'parent_child_support_received' , text: "Child support received for any of your parents' children. Don't include foster care or adoption payments.", response_type: 'Integer', section: 7},
  {position: 94, name: 'parent_exempt_income' , text: 'Tax exempt interest income from IRS Form 1040 - line 8b or 1040A - line 8b.', response_type: 'Integer', section: 7},
  {position: 94, name: 'parent_untaxed_ira' , text: 'Untaxed portions of IRA distributions from IRS Form 1040 - lines (15a minus 15b) or 1040A - lines (11a minus 11b). Exclude rollovers. If negative, enter a zero here.', response_type: 'Integer', section: 7},
  {position: 94, name: 'parent_untaxed_pensions' , text: 'Untaxed portions of pensions from IRS form 1040 (lines 16a minus 16b) or 1040A lines (12a minus 12b).', response_type: 'Integer', section: 7},


]

fafsa = Form.create
questions.each do |question_params|
  fafsa.questions.create!(question_params)
end
