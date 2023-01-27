class FileUpload < ApplicationRecord
  # has one_attached :file
  has_one_attached :file
  has_one :general, dependent: :destroy
  validates :file_name, presence: true
  validates :email, presence: true
end
