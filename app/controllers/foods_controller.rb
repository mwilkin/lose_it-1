class FoodsController < ApplicationController
  before_action :find_food, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  def index
    @foods = Food.all
  end

  def new
    @food = current_user.foods.build
  end

  def create
    @food = current_user.foods.build(food_params)
    respond_to do |format|
      if @food.save(food_params)
        format.html { redirect_to exercises_path }
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
  def food_params
    params.require(:food).permit(:description, :meal, :calories, :date)
  end

  def find_food
    @food = Food.find(params[:id])
  end
end
