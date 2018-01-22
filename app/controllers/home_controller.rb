class HomeController < ApplicationController
	def index
		@cars = Car.take(3)
	end
end
