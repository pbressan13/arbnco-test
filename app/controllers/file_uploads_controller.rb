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
      ImportFileUploadJob.perform_now(@file_upload)
      redirect_to file_uploads_path
    else
      render :new
    end
  end

  def index
    @file_uploads = FileUpload.all
  end

  def show
    @file_upload = FileUpload.find(params[:id])
    @array_objects = []
    @general = [@file_upload.general]
    @rec_user = RecUser.where(file_upload_id: @file_upload.id).to_a
    @glass = Glass.where(file_upload_id: @file_upload.id).to_a
    @zone = Zone.where(file_upload_id: @file_upload.id).to_a
    @door = Door.where(file_upload_id: @file_upload.id).to_a
    @dhw_generator = DhwGenerator.where(file_upload_id: @file_upload.id).to_a
    @wall = Wall.where(file_upload_id: @file_upload.id).to_a
    @construction = Construction.where(file_upload_id: @file_upload.id).to_a
    @hvac_system = HvacSystem.where(file_upload_id: @file_upload.id).to_a
    @compliance = Compliance.where(file_upload_id: @file_upload.id).to_a
    @window = Window.where(file_upload_id: @file_upload.id).to_a
    @array_objects << @general << @rec_user << @glass << @zone << @door << @dhw_generator << @wall << @construction << @hvac_system << @compliance << @window
  end

  private

  def file_upload_params
    params.require(:file_upload).permit(:file_name, :email, :file)
  end
end
