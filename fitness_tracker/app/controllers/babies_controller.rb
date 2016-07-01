class BabiesController < ApplicationController
  
  include ConversionHelper

  def new
  	@baby = Baby.new
  end

  def create
    @baby = Baby.new(baby_params)    
    if @baby.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def index
    @babies = Baby.all
  end

  def show
    @baby = Baby.find(params[:id])
    @metric = is_metric?(params[:metric])
    @height = convert_height(@baby, @metric)
    @weight = convert_weight(@baby, @metric)
    @temperature = convert_temperature(@baby, @metric)
    @animals = Animal.all
  end

  private

  # A strong params for Baby
  # first_name is a string, last_name is a string,
  # height is an integer, weight is an integer, metric is a boolean
  def baby_params
  	params.require(:baby).permit(:first_name, :last_name, :height, :weight, :metric, :temperature)
  end

end