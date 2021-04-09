class AfterExercisesController < ApplicationController

  def new
    @before_exercise = AfterExercise.new
  end

  def create
    @before_exercise = AfterExercise.new(before_exercise_params)
    @before_exercise.user = current_user
    @before_exercise.sent = false # consultar bien si esta ligada a user o users_info
    if @trip.save
      redirect_to edit_trip_path(@trip)
    else
      render :new
    end
  end

  def show
    @user = current_user
    @before_exercise = BeforeExercise.find(params[:id])
  end


  private

  def before_exercise_params
    params.require(:before_exercise).permit(:input_before, :anxiety_level, :motivation_level, :mood_level, :cardiac_frequency, :respiratory_rate , :pain)
  end

end
