class FileUploadsController < ApplicationController
  def new
    @file_upload = FileUpload.new
  end

  def create
    file_name = params[:file_upload][:file]&.original_filename
    email = params[:file_upload][:email]
    file = params[:file_upload][:file]

    render :new unless file.present? && email.present? && file.content_type == 'application/octet-stream'

    @file_upload = FileUpload.new(file_name: file_name, email: email, file: file)

    if @file_upload.save
      # call the import method from the general controller
      GeneralController.import(file)
      redirect_to file_uploads_path
    else
      render :new
    end
  end

  def index
    @file_uploads = FileUpload.all
  end

  private

  def file_upload_params
    params.require(:file_upload).permit(:file_name, :email, :file)
  end
end
