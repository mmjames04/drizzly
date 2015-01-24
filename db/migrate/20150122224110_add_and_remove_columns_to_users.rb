class AddAndRemoveColumnsToUsers < ActiveRecord::Migration
  def change
  	remove_column :users, :default_location, :text
  	add_column :users, :city, :string
  	add_column :users, :state, :string
  end
end
