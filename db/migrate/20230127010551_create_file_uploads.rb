class CreateFileUploads < ActiveRecord::Migration[6.0]
  def change
    create_table :file_uploads do |t|
      t.string :file_name
      t.string :email
      t.timestamps
    end
  end
end
