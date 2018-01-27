class ChangeColumnName < ActiveRecord::Migration[5.1]
  def change
  	rename_column :categories, :category_code, :code
  end
end
