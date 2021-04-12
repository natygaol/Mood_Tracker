class PatientsController < ApplicationController
  def index
    @patients = Patient.all
  end

  def show
  end

  def new
    @patient = Patient.new(params[])
  end

  def create
  end

end
