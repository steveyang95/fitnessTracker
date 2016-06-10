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
  end

  private

  # A stronng params for Animal
  def animal_params
    params.require(:animal).permit(:name, :description, :height, :weight)
  end

end
