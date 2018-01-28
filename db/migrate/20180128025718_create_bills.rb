class CreateBills < ActiveRecord::Migration[5.1]
  def change
    create_table :bills do |t|
      t.string :title
      t.text :text
      t.references :category, foreign_key: true
      t.string :status

      t.timestamps
    end
  end
end
