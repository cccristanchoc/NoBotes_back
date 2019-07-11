class SolicitationsController < ApplicationController
  before_action :set_solicitation, :set_applicant, :set_applied, only: [:show, :update, :destroy, :byapplicant, :byApplied]

  # GET /solicitations
  def index
    @solicitations = Solicitation.all

    render json: @solicitations
  end

  # GET /solicitations/1
  def show
    render json: @solicitation
  end

  # POST /solicitations
  def create
    @solicitation = Solicitation.new(solicitation_params)

    if @solicitation.save
      render json: @solicitation, status: :created, location: @solicitation
    else
      render json: @solicitation.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /solicitations/1
  def update
    if @solicitation.update(solicitation_params)
      render json: @solicitation
    else
      render json: @solicitation.errors, status: :unprocessable_entity
    end
  end

  # DELETE /solicitations/1
  def destroy
    @solicitation.destroy
  end

  # GET /solicitations/applicant/1
  def byApplicant
    render json: @Applicant
  end

  # GET /solicitations/applied/1
  def byApplied
    render json: @Applied
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_solicitation
      @solicitation = Solicitation.find(params[:id])
    end

    def set_applicant
      @Applicant = Solicitation.where(idApplicant:(params[:id]))
    end
    
    def set_applied
      @Applied = Solicitation.where(idApplied:(params[:id]))
    end

    # Only allow a trusted parameter "white list" through.
    def solicitation_params
      params.require(:solicitation).permit(:idApplicant, :idApplied, :description)
    end

end
