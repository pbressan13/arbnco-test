require 'rest-client'

class FileUploadMailer < ApplicationMailer
  API_KEY = ENV['MAILGUN_API_KEY']
  DOMAIN = ENV['MAILGUN_DOMAIN']
  API_URL = "https://api:#{API_KEY}@api.mailgun.net/v2/#{DOMAIN}"

  def self.send_mail(file_upload)
    Rails.logger.info "Sending email to #{file_upload.email}"
    RestClient.post API_URL + '/messages',
                    from: 'arbnco-test@arbnco-test.com',
                    to: file_upload.email,
                    subject: 'Your file is ready',
                    text: "Your file #{file_upload.file_name} is uploaded and ready to be checked on #{Rails.application.routes.url_helpers.file_upload_url(file_upload.id)}",
                    html: "Your file <b>#{file_upload.file_name}</b> is uploaded and ready to be checked on <a href='#{Rails.application.routes.url_helpers.file_upload_url(file_upload.id)}'>#{Rails.application.routes.url_helpers.file_upload_url(file_upload.id)}</a>"
  end
end
