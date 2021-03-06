class BeforeExercisesController < ApplicationController

  def new
    @before_exercise = BeforeExercise.new
  end

  def create
    @before_exercise = BeforeExercise.new(before_exercise_params)
    @before_exercise.user = current_user
    @before_exercise.sent = false # consultar bien si esta ligada a user o users_info
    if @before_exercise.save
      redirect_to new_before_exercise(@before_exercise)
    else
      render :new
    end
  end

  private

  def before_exercise_params
    params.require(:before_exercise).permit(:input_before, :anxiety_level, :motivation_level, :mood_level, :cardiac_frequency, :respiratory_rate , :pain)
  end
end
