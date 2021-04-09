class AfterExercisesController < ApplicationController

  def new
    @after_exercise = AfterExercise.new
  end

  def create
    @after_exercise = AfterExercise.new(after_exercise_params)
    @after_exercise.user = current_user
    @after_exercise.sent = false # consultar bien si esta ligada a user o users_info
    if @trip.save
      redirect_to edit_trip_path(@trip)
    else
      render :new
    end
  end

  def show
    @user = current_user
    @after_exercise = AfterExercise.find(params[:id])
  end


  private

  def after_exercise_params
    params.require(:after_exercise).permit(:input_before, :anxiety_level, :motivation_level, :mood_level, :cardiac_frequency, :respiratory_rate , :pain)
  end

end
