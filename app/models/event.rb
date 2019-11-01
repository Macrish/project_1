class Event < ApplicationRecord
	attr_accessor :repeats, :boolean
	attr_accessor :repeats_end, :date

	def repeats=(val)
		@repeats = (val == "1")
	end

	def repeats_end=(val)
		@repeats_end = Date.new(*val.values)
	end
end
