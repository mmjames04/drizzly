class FavoritesController < ApplicationController


	def create
		@favorite = current_user.favorites.create(favorite_params)
		redirect_to weather_path
	end

	# destroys favorite and redicrect to articles page
	def destroy
		@favorite = current_user.favorites.find(params[:id])
		@favorite.destroy
		redirect_to weather_path
	end

	private 

		def favorite_params
			params.require(:favorite).permit(:name, :city, :state)
		end
end
