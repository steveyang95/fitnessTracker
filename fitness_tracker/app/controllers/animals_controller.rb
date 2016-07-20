class AnimalsController < ApplicationController

  def new
    @animal = Animal.new
  end

  def create
    @animal = Animal.new(animal_params)    
    if @animal.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def index
    @animals = Animal.all
  end

  def show
    @animal = Animal.find(params[:id])
    @metric = Unit.is_metric?(params[:metric])
    @height = Unit.get_correct_height(@animal, @metric)
    @weight = Unit.get_correct_weight(@animal, @metric)
  end

  private

  # A stronng params for Animal
  def animal_params
    params.require(:animal).permit(:name, :description, :height, :weight, :metric)
  end

end
