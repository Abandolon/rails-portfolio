class DownloadMailer < ApplicationMailer

  def form_response
    @user = params[:download]

    mail to: download.email, bcc: "anthony@bandolon.me", subject: "Anthony Bandolon's CV"
  end
end
