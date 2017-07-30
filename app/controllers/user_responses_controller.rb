class UserResponsesController < ApplicationController
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
      # render :partial => 'user_responses/brand_new_form', locals: {user_response: @user_response}
      render :action => "new"#, questio: @user_response.next_question.id.to_i
    end
  end

  # GET /user_responses/new
  def new
    @user_response = UserResponse.new
    puts "hereeeeeeeee "
    if params[:question_id].present?
      @question = Question.find(params[:question_id])
        # render :partial => 'user_responses/form', locals: {user_response: @user_response}
    else
      @question = Question.first
    end

    raise "You don't have any question" if @question.nil?
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
        if @user_response.next_question.nil?
          redirect_to root_path, notice: "You're done!" # application is done!
        else
          redirect_to new_user_response_path(question_id: @user_response.next_question.id)
        end
      }
      format.js {
        @user_response.save!
        if @user_response.next_question.nil?
          redirect_to root_path, notice: "You're done!" # application is done!
        else
          # if params[:question_id].present?
            @question = Question.find(@user_response.next_question.id.to_i)
              # render :partial => 'user_responses/form', locals: {user_response: @user_response}
          # else
          #   @question = Question.first
          # end
          # session[:question_id] = @question.id
          render :action => "new"#, questio: @user_response.next_question.id.to_i
          # render new_user_response_path(), layout: false
        end
      }
    end
  end

  # PATCH/PUT /user_responses/1
  # PATCH/PUT /user_responses/1.json
  def update
    respond_to do |format|
      if @user_response.update(user_response_params)
        format.html { redirect_to new_user_response_path(question_id: @user_response.next_question.id) }
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

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_response
      @user_response = UserResponse.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_response_params
      params.require(:user_response).permit(:response, :user_id, :question_id)
    end

end
