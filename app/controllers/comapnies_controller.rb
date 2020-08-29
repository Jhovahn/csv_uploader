class ComapniesController < ApplicationController
  before_action :set_comapny, only: [:show, :update, :destroy]

  # GET /comapnies
  def index
    @comapnies = Comapny.all

    render json: @comapnies
  end

  # GET /comapnies/1
  def show
    render json: @comapny
  end

  # POST /comapnies
  def create
    @comapny = Comapny.new(comapny_params)

    if @comapny.save
      render json: @comapny, status: :created, location: @comapny
    else
      render json: @comapny.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /comapnies/1
  def update
    if @comapny.update(comapny_params)
      render json: @comapny
    else
      render json: @comapny.errors, status: :unprocessable_entity
    end
  end

  # DELETE /comapnies/1
  def destroy
    @comapny.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comapny
      @comapny = Comapny.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def comapny_params
      params.require(:comapny).permit(:name, :manager, :status, :terms)
    end
end
