class UnitsController < ApplicationController

	def create
		@unit = Unit.new
		@unit.update_attributes(params)
		!@unit.save ? redirect_to "#" : @unit
	end

	

end