class StaticPagesController < ApplicationController
	# devise callback for user authentication
	before_action :authenticate_user!, only:[:home, :show]

	def home
	end

	def show
	end

end