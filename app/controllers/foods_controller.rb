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
    if @food.save(food_params)
      redirect_to foods_path
    else
      render :new
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
