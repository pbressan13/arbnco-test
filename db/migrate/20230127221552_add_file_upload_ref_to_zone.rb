class AddFileUploadRefToZone < ActiveRecord::Migration[6.0]
  def change
    add_reference :zones, :file_upload, null: false, foreign_key: true
  end
end
