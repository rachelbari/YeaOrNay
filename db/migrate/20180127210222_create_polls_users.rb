class CreatePollsUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :polls_users do |t|
      t.references :poll, foreign_key: true
      t.references :user, foreign_key: true
      t.boolean :yea
      t.boolean :nay

      t.timestamps
    end
  end
end
