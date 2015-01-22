class CreateFavorites < ActiveRecord::Migration
  def change
    create_table :favorites do |t|
    	t.belongs_to :user
    	t.text :location
    	t.text :name
    end
  end
end
