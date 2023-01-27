class AddFileUploadRefToGeneral < ActiveRecord::Migration[6.0]
  def change
    add_reference :generals, :file_upload, null: false, foreign_key: true
  end
end
