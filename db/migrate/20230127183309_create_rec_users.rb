class CreateRecUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :rec_users do |t|
      t.string :code
      t.string :user_in_out
      t.string :rec_comment

      t.timestamps
    end
  end
end
