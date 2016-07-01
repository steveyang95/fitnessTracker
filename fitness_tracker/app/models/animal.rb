include ConversionHelper

class Animal < ActiveRecord::Base
	# Returns imperial height value
	def get_imperial_height(metric)
		convert_height(self, metric)
	end


	# Returns imperial weight value
	def get_imperial_weight(metric)
		convert_weight(self, metric)
	end

	# Returns bool whether taller than baby
	def taller_than_baby?(baby, metric)
		convert_height(self, metric) > convert_height(baby, metric)
	end

	# Returns bool whether heavier than baby
	def heavier_than_baby?(baby, metric)
		convert_weight(self, metric) > convert_weight(baby, metric)
	end
end
