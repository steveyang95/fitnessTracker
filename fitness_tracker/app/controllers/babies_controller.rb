class BabiesController < ApplicationController
  
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
    # @temperature = Unit.create({value: @baby.temperature, unit_name: "T", metric: @baby.metric})
    @height = Unit.create({value: @baby.height, unit_name: "H", metric: @baby.metric})
    @weight = Unit.create({value: @baby.height, unit_name: "W", metric: @baby.metric})

  end

  private

  # A strong params for Baby
  # first_name is a string, last_name is a string,
  # height is an integer, weight is an integer, metric is a boolean
  def baby_params
  	params.require(:baby).permit(:first_name, :last_name, :height, :weight, :metric, :temperature)
  end

end