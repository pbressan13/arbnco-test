class General < ApplicationRecord
  has_one :file_upload, dependent: :destroy
  validates :sbem_project, presence: true
end
