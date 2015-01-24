class FavoritesController < ApplicationController

	def create
		@favorite = current_user.favorites.create(favorite_params)
		redirect_to weather_path
	end

	def destroy
		@favorite = current_user.favorites.find(params[:id])
		if @favorite.destroy
      respond_to do |format|
        format.html 
        format.json {render json: @favorite}
      end
    end
	end

	private 
	def favorite_params
		params.require(:favorite).permit(:name, :city, :state)
	end
end
