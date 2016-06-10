class BabiesController < ApplicationController
  has_many :animals
  
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
  end

  private

  # A stronng params for Baby
  # first_name is a string, last_name is a string, birthday is a string, 
  # height is an integer, weight is an integer, metric is a boolean
  def baby_params
  	params.require(:baby).permit(:first_name, :last_name, :birthday, :height, :weight, :metric)
  end

end