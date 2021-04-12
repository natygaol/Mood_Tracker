class AfterExercisesController < ApplicationController

  def new
    @after_exercise = AfterExercise.new
  end

  def create
    @after_exercise = AfterExercise.new(after_exercise_params)
    @after_exercise.user = current_user
    @after_exercise.sent = false # consultar bien si esta ligada a user o users_info
    if @after_exercise.save
      redirect_to new_after_exercise(@after_exercise)
    else
      render :new
    end
  end


  private

  def after_exercise_params
    params.require(:after_exercise).permit(:input_before, :anxiety_level, :motivation_level, :mood_level, :cardiac_frequency, :respiratory_rate , :pain)
  end

end
