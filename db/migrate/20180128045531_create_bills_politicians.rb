class CreateBillsPoliticians < ActiveRecord::Migration[5.1]
  def change
    create_table :bills_politicians do |t|
      t.references :bill, foreign_key: true
      t.references :politician, foreign_key: true
      t.boolean :yea
      t.boolean :nay

      t.timestamps
    end
  end
end
