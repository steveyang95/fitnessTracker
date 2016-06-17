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
    @height = Unit.create({value: @baby.height, unit_name: "H", metric: @baby.metric})
    @weight = Unit.create({value: @baby.weight, unit_name: "W", metric: @baby.metric})
    @temperature = Unit.create({value: @baby.temperature, unit_name: "T", metric: @baby.metric})

    @height_metric = @baby.metric ? @height.value : @height.inch_to_centimeter(@baby.height)
    @height_imperial = @baby.metric ? @height.centimeter_to_inch(@baby.height) : @height.value
    @weight_metric = @baby.metric ? @weight.value : @weight.pound_to_kilogram(@weight.value)
    @weight_imperial = @baby.metric ? @weight.kilogram_to_pound(@weight.value) : @weight.value
    @temperature_metric = @baby.metric ? @temperature.value : @temperature.fahrenheit_to_celsium(@temperature.value)
    @temperature_imperial = @baby.metric ? @temperature.celsium_to_fahrenheit(@temperature.value) : @temperature.value
  end

  private

  # A strong params for Baby
  # first_name is a string, last_name is a string,
  # height is an integer, weight is an integer, metric is a boolean
  def baby_params
  	params.require(:baby).permit(:first_name, :last_name, :height, :weight, :metric, :temperature)
  end

end