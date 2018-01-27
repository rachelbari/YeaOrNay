class CreatePolls < ActiveRecord::Migration[5.1]
  def change
    create_table :polls do |t|
      t.references :category, foreign_key: true
      t.text :poll_text

      t.timestamps
    end
  end
end
