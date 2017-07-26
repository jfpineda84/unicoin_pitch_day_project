
class UserResponsesController < ApplicationController

  require "google/cloud/vision"

  before_action :set_user_response, only: [:show, :edit, :update, :destroy]

  # GET /user_responses
  # GET /user_responses.json
  def index
    @user_responses = current_user.user_responses
  end

  # GET /user_responses/1
  # GET /user_responses/1.json
  def show
  end

  def brand_new
    @user_response ||= current_user.user_responses.last
    if !@user_response.nil?
      @question = Question.find(@user_response.question.id)
      render :partial => 'user_responses/brand_new_form', locals: {user_response: @user_response}
    end
  end

  # GET /user_responses/new
  def new
    @user_response = UserResponse.new

    if params[:question_id].present?
      @question = Question.find(params[:question_id])
        render :partial => 'user_responses/form', locals: {user_response: @user_response}
    else
      @question = Question.first
    end
  end

  # GET /user_responses/1/edit
  def edit
  end

  # POST /user_responses
  # POST /user_responses.json
  def create
    @user_response = current_user.user_responses.new(user_response_params)


    # @user_response.user_id = params[:user_id]
    # @user_response.question_id = params[:question_id]

    # @question = # you need to find the question base on the question_id
    # base on the question postions going be getting the next question

    respond_to do |format|
        format.json {
          render json: {
            is_success: @user_response.save,
            url: new_user_response_path(:question_id => @user_response.question_id.to_i + 1)
          }
        }
        format.html {
          @user_response.save!
          redirect_to new_user_response_path(question_id: @user_response.next_question.id)
        }
      end
    end

  # PATCH/PUT /user_responses/1
  # PATCH/PUT /user_responses/1.json
  def update
    respond_to do |format|
      if @user_response.update(user_response_params)
        format.html { redirect_to @user_response, notice: 'User response was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_response }
      else
        format.html { render :edit }
        format.json { render json: @user_response.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_responses/1
  # DELETE /user_responses/1.json
  def destroy
    @user_response.destroy
    respond_to do |format|
      format.html { redirect_to user_responses_url, notice: 'User response was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def image_upload
    user_response = UserResponse.new(user_response_params)
    process_image(user_response)
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_response
      @user_response = UserResponse.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_response_params
      params.require(:user_response).permit(:response, :user_id, :question_id, :image_upload)
    end

    def process_image(user_response)
      vision = Google::Cloud::Vision.new project: "silent-bird-174423"#, keyfile: :secret_key_base

      puts "*******????*****Send #{user_response.image_upload.url} to Google*******????*****"

      url = user_response.image_upload.url.to_s

      image = vision.image_upload(url)

      #  "/Users/juanfer/Desktop/wyncode/projects/test_app1/app/assets/images/tax2.png"

      text1 = image.text
      text = text1.text.split("\n") #.zip

      p "*******????*****this is the response from google #{text} *******????*****"


      @ssn = text[9][0] # SS# FAFSA# 9
      @address = text[14][0] # Address FAFSA# 4
      @city = text[18][0] # City information FAFSA# 5, 6, 7, 8
      @money_earned = text[30][0] # How much money did you earn? FAFSA# 39
      @gross_income = text[40][0] # Adjusted gross income? FAFSA# 36
      @income_tax = text[61][0]  # Income tax? FAFSA# 57
      byebug
    end

end
