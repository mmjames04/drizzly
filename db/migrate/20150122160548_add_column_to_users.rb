class AddColumnToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :default_location, :text
  end
end
