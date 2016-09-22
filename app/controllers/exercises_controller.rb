class ExercisesController < ApplicationController
  before_action :find_exercise, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  def index
    @exercises = Exercise.all
    @foods = Food.all
  end

  def new
    @exercise = current_user.exercises.build
  end

  def create
    @exercise = current_user.exercises.build(exercise_params)
    respond_to do |format|
      if @exercise.save(exercise_params)
        format.html { exercises_path }
        format.js
      else
        format.html { render :new }
        format.js { render :errors }
      end
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
