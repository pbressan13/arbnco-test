class General < ApplicationRecord
  belongs_to :file_upload

  def self.file_upload
    FileUpload.find(file_upload_id)
  end
end
