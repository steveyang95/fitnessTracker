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
  end

  private

  def baby_params
  	params.require(:baby).permit(:first_name, :last_name, :birthday)
  end

end