class HomeController < ApplicationController
	def index
		@positions = Position.order("created_at DESC").limit(8)
	end
end
