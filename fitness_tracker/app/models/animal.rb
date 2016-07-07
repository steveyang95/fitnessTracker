class Animal < ActiveRecord::Base
	# Returns imperial height value
	def get_imperial_height(metric)
		Unit.get_correct_height(self, metric)
	end


	# Returns imperial weight value
	def get_imperial_weight(metric)
		Unit.get_correct_weight(self, metric)
	end

	# Returns bool whether taller than baby
	def taller_than_baby?(baby, metric)
		Unit.get_correct_height(self, metric) > Unit.get_correct_height(baby, metric)
	end

	# Returns bool whether heavier than baby
	def heavier_than_baby?(baby, metric)
		Unit.get_correct_weight(self, metric) > Unit.get_correct_weight(baby, metric)
	end
end
