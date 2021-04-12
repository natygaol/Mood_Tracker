class PatientsController < ApplicationController
  def index
    @patients = Patient.all
    # @patients = Patient.where(doctor_id: @doctor.id)
  end

  def show
    @patient = Patient.find(params[:id])
  end

  def new
    @patient = Patient.new(patient_params)
  end

  def create
    @patient = Patient.new(patient_params)
    if @patient.save
      redirect_to new_before_exercise_path
    else
      render :new
    end
  end

  private

  def patient_params
    params.require(:patient).permit(:first_name, :last_name, :age, :address, :gender, :phone_number, :previous_illness) 
  end

end
