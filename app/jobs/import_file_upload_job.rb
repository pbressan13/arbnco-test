class ImportFileUploadJob < ApplicationJob
  queue_as :default

  def perform(file_upload)
    # call the import method from the general controller
    HelperController.import(file_upload)
    objects_created = HelperController.import(file_upload)
    # get the general id from array of objects
    general = objects_created.select { |object| object.instance_of?(::General) }.first
    file_upload.general_id = general.id
    file_upload.save
  end
end
