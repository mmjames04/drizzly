class AddAndRemoveColumnsToFavorites < ActiveRecord::Migration
  def change
  	remove_column :favorites, :location, :text
  	add_column :favorites, :city, :string
  	add_column :favorites, :state, :string
  end
end
