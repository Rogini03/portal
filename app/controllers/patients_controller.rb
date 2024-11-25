class PatientsController < ApplicationController
  before_action :authenticate_user!  # Ensure user is authenticated
  before_action :set_patient, only: %i[ show edit update destroy ]

  # GET /patients or /patients.json
  def index
    @patients = Patient.page(params[:page]).per(10).order("created_at DESC")
    authorize @patients
  end

  def graph
    @patients = Patient.all
    authorize @patients
  end


  # GET /patients/1 or /patients/1.json
  def show
    authorize @patient
  end

  # GET /patients/new
  def new
    @patient = Patient.new
    authorize @patient
  end

  # GET /patients/1/edit
  def edit
    authorize @patient
  end

  # POST /patients or /patients.json
  def create
    @patient = Patient.new(patient_params)
    authorize @patient
    respond_to do |format|
      if @patient.save
        format.html { redirect_to @patient, notice: "Patient was successfully created." }
        format.json { render :show, status: :created, location: @patient }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @patient.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /patients/1 or /patients/1.json
  def update
    authorize @patient
    respond_to do |format|
      if @patient.update(patient_params)
        format.html { redirect_to @patient, notice: "Patient was successfully updated." }
        format.json { render :show, status: :ok, location: @patient }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @patient.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /patients/1 or /patients/1.json
  def destroy
    authorize @patient
    @patient.destroy!

    respond_to do |format|
      format.html { redirect_to patients_path, status: :see_other, notice: "Patient was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_patient
      @patient = Patient.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def patient_params
      params.require(:patient).permit(:first_name, :last_name, :date_of_birth, :blood_group, :gender, :mobile_number, :occupation, :marital_status, :weight, :height, :diagnosis, :op_number)
    end
end
