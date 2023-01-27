class AddGeneralRefToFileUploads < ActiveRecord::Migration[6.0]
  def change
    add_reference :file_uploads, :general, foreign_key: true
  end
end
