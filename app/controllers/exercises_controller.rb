class ExercisesController < ApplicationController
  before_action :find_exercise, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  def index
    @exercises = Exercise.all
  end

  def new
    @exercise = current_user.exercises.build
  end

  def create
    @exercise = current_user.exercises.build(exercise_params)
    if @exercise.save(exercise_params)
      redirect_to exercises_path
    else
      render :new
    end
  end

  def show

  end

  private
  def exercise_params
    params.require(:exercise).permit(:description, :activity, :calories, :date)
  end

  def find_exercise
    @exercise = Exercise.find(params[:id])
  end
end
