class AddFileUploadRefToHvacSystem < ActiveRecord::Migration[6.0]
  def change
    add_reference :hvac_systems, :file_upload, null: false, foreign_key: true
  end
end
