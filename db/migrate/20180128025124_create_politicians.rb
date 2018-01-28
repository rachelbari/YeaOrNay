class CreatePoliticians < ActiveRecord::Migration[5.1]
  def change
    create_table :politicians do |t|
      t.string :first_name
      t.string :last_name
      t.string :role
      t.string :party
      t.string :state

      t.timestamps
    end
  end
end
