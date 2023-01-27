class AddFileUploadRefToCompliance < ActiveRecord::Migration[6.0]
  def change
    add_reference :compliances, :file_upload, null: false, foreign_key: true
  end
end
