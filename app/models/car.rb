class Car < ActiveRecord::Base
	def complete_name
		"#{name}, #{brand}"
	end

end
