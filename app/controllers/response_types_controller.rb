class ResponseTypesController < ApplicationController
  before_action :set_response_type, only: [:show, :edit, :update, :destroy]

  # GET /response_types
  # GET /response_types.json
  def index
    @response_types = ResponseType.all
  end

  # GET /response_types/1
  # GET /response_types/1.json
  def show
  end

  # GET /response_types/new
  def new
    @response_type = ResponseType.new
  end

  # GET /response_types/1/edit
  def edit
  end

  # POST /response_types
  # POST /response_types.json
  def create
    @response_type = ResponseType.new(response_type_params)

    respond_to do |format|
      if @response_type.save
        format.html { redirect_to @response_type, notice: 'Response type was successfully created.' }
        format.json { render :show, status: :created, location: @response_type }
      else
        format.html { render :new }
        format.json { render json: @response_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /response_types/1
  # PATCH/PUT /response_types/1.json
  def update
    respond_to do |format|
      if @response_type.update(response_type_params)
        format.html { redirect_to @response_type, notice: 'Response type was successfully updated.' }
        format.json { render :show, status: :ok, location: @response_type }
      else
        format.html { render :edit }
        format.json { render json: @response_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /response_types/1
  # DELETE /response_types/1.json
  def destroy
    @response_type.destroy
    respond_to do |format|
      format.html { redirect_to response_types_url, notice: 'Response type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_response_type
      @response_type = ResponseType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def response_type_params
      params.require(:response_type).permit(:type, :data)
    end
end
