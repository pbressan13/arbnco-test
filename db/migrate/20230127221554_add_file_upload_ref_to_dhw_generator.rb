class AddFileUploadRefToDhwGenerator < ActiveRecord::Migration[6.0]
  def change
    add_reference :dhw_generators, :file_upload, null: false, foreign_key: true
  end
end
