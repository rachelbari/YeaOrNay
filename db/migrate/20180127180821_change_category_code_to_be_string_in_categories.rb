class ChangeCategoryCodeToBeStringInCategories < ActiveRecord::Migration[5.1]
  def change
  	change_column :categories, :category_code, :string
  end
end
