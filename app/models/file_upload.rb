class FileUpload < ApplicationRecord
  # has one_attached :file
  has_one_attached :file
  has_many :general, dependent: :destroy
  validates :file_name, presence: true
  validates :email, presence: true

  def self.general
    General.find(general_id)
  end
end
