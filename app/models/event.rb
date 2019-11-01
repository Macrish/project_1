class Event < ApplicationRecord
	#repeats and repeats_end fields, which are not backed by columns in the database
	#Since it leverages Rails’ battle tested built-in type conversion

	# attr_accessor :repeats, :boolean
	# attr_accessor :repeats_end, :date

	# def repeats=(val)
	# 	@repeats = (val == "1")
	# end

	# def repeats_end=(val)
	# 	@repeats_end = Date.new(*val.values)
	# end
end
