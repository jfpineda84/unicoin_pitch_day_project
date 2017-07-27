class UsersController < ApplicationController
  include UsersHelper

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

  # def process_image(user)
  #   vision = Google::Cloud::Vision.new project: "PROJECT_ID" #, keyfile: :secret_key_base
  #
  #   image = vision.image Paperclip.io_adapters.for(user.image_upload).path
  #
  #   text1 = image.text
  #   text = text1.text.split("\n")


  #   # parsing data from GCVision as a static form
  #
  #   # @address = text[14] # Address FAFSA# 4
  #   # @city = text[18] # City information FAFSA# 5, 6, 7, 8
  #   # @money_earned = text[30] # How much money did you earn? FAFSA# 39
  #   # @gross_income = text[40] # Adjusted gross income? FAFSA# 36
  #   # @income_tax = text[61]  # Income tax? FAFSA# 57
  #
  #
  #   # parsing data from GCVision as a flexible  form
  #
  #   def get_ssn(lines)
  #     criteria = [
  #       '\A\d{9}\z', # from beginning to end of string match 9 digits
  #     ].map do |needle|
  #       lines.select do |line|
  #         /#{needle}/.match(line)
  #       end
  #     end.flatten.map do |item|
  #       item
  #     end.flatten.each do |item|
  #       item
  #     end[0]
  #   end
  #
  #   def get_address(lines)
  #     criteria = [
  #       'Home address',
  #     ].map do |needle|
  #       lines.map.with_index do |line, i|
  #         if /#{needle.downcase}/.match(line.downcase)
  #           [line, lines[i + 1]]
  #         end
  #       end.compact
  #     end.flatten(1).map do |item|
  #       item.last
  #     end.first
  #   end
  #
  #   def get_city(lines)
  #     criteria = [
  #       'City',
  #     ].map do |needle|
  #       lines.map.with_index do |line, i|
  #         if /#{needle.downcase}/.match(line.downcase)
  #           [line, lines[i + 1]]
  #         end
  #       end.compact
  #     end.flatten(1).map do |item|
  #       item.last
  #     end.first
  #   end
  #
  #   def get_money_earned(lines)
  #     criteria = [
  #       'Income',
  #     ].map do |needle|
  #       lines.map.with_index do |line, i|
  #         if /#{needle.downcase}/.match(line.downcase)
  #           [line, lines[i + 1]]
  #         end
  #       end.compact
  #     end.flatten(1).map do |item|
  #       item.last
  #     end[1]
  #   end
  #
  #   def get_gross_income(lines)
  #     criteria = [
  #       'payment.',
  #     ].map do |needle|
  #       lines.map.with_index do |line, i|
  #         if /#{needle.downcase}/.match(line.downcase)
  #           [line, lines[i + 1]]
  #         end
  #       end.compact
  #     end.flatten(1).map do |item|
  #       item.last
  #     end.first
  #   end
  #
  #   def get_income_tax(lines)
  #     criteria = [
  #       'table in the',
  #     ].map do |needle|
  #       lines.map.with_index do |line, i|
  #         if /#{needle.downcase}/.match(line.downcase)
  #           [line, lines[i + 1]]
  #         end
  #       end.compact
  #     end.flatten(1).map do |item|
  #       item.last
  #     end[0]
  #   end
  #
  #
  #   keys = ['ssn', 'address', 'city', 'money_earned', 'gross_income', 'income_tax']
  #   data = [get_ssn(text), get_address(text), get_city(text), get_money_earned(text), get_gross_income(text),
  #   get_income_tax(text)]
  #
  #   data_for_creation = Hash[keys.zip(data)]
  #   p data_for_creation
  #
  #
  #   UserResponse.create!(
  #     question: Question.find_by(name: 'social'),
  #     response: data_for_creation["ssn"],
  #     user: user
  #   )
  #   UserResponse.create!(
  #     question: Question.find_by(name: 'street_address'),
  #     response: data_for_creation["address"],
  #     user: user
  #   )
  #   UserResponse.create!(
  #     question: Question.find_by(name: 'city'),
  #     response: data_for_creation["city"],
  #     user: user
  #   )
  #   UserResponse.create!(
  #     question: Question.find_by(name: 'total_earnings'),
  #     response: data_for_creation["money_earned"],
  #     user: user
  #   )
  #   UserResponse.create!(
  #     question: Question.find_by(name: 'adjusted_gross_income'),
  #     response: data_for_creation["gross_income"],
  #     user: user
  #   )
  #   UserResponse.create!(
  #     question: Question.find_by(name: 'income_tax'),
  #     response: data_for_creation["income_tax"],
  #     user: user
  #   )
  #
  #
  # end

end
