class AddFileUploadRefToWall < ActiveRecord::Migration[6.0]
  def change
    add_reference :walls, :file_upload, null: false, foreign_key: true
  end
end
