class DownloadMailerPreview < ActionMailer::Preview

  def form_response
    @user = Download.last

    mail to: @user.email, bcc: "anthony@bandolon.me", subject: "Anthony Bandolon's CV"

  end

end
