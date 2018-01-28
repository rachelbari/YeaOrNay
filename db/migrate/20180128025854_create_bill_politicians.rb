class CreateBillPoliticians < ActiveRecord::Migration[5.1]
  def change
    create_table :bill_politicians do |t|
      t.references :bill, foreign_key: true
      t.references :politican, foreign_key: true
      t.boolean :yea
      t.boolean :nay

      t.timestamps
    end
  end
end
