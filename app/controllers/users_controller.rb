class UsersController < ApplicationController

  require "google/cloud/vision"

  before_action :set_user, only: [:show, :edit, :update, :destroy]

  # GET /users
  # GET /users.json
  def index
    @users = User.all
  end

  # GET /users/1
  # GET /users/1.json
  def show
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)

    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path
    else
      redirect_to register_path
    end
  end
  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        process_image(@user) if @user.image_upload
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  # def image_upload
  #   user = current.user_responses.new(user_response_params)
  #   user.question = Question.take
  #   user.save!
  #   process_image(user)
  # end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_user
    @user = User.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :image_upload)
  end

  def process_image(user)
    vision = Google::Cloud::Vision.new project: "PROJECT_ID"#, keyfile: :secret_key_base

    image = vision.image Paperclip.io_adapters.for(user.image_upload).path

    text1 = image.text
    text = text1.text.split("\n")

    p text

byebug

    # ssn = text[9] # SS# FAFSA# 9
    # UserResponse.create!(
    #   question: Question.find_by(name: 'social')
    #   response: ssn
    #   user: user
    # )

    @address = text[14] # Address FAFSA# 4
    @city = text[18] # City information FAFSA# 5, 6, 7, 8
    @money_earned = text[30] # How much money did you earn? FAFSA# 39
    @gross_income = text[40] # Adjusted gross income? FAFSA# 36
    @income_tax = text[61]  # Income tax? FAFSA# 57

byebug
  end

end
