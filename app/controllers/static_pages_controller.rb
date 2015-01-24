class StaticPagesController < ApplicationController
	# devise callback for user authentication
	before_action :authenticate_user!, only:[:home, :show]

	def home
	end

	def show
		@favorites = current_user.favorites
		@favorite = current_user.favorites.new
	end

end