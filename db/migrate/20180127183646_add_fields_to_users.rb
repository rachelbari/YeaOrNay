class AddFieldsToUsers < ActiveRecord::Migration[5.1]
  def change
  	add_column :users, :first_name, :string
  	add_column :users, :last_name, :string
  	add_column :users, :zip_code, :integer
  	add_column :users, :state, :string
  	add_column :users, :birthday, :date
  	add_column :users, :race, :string
  	add_column :users, :children, :integer
  end
end
