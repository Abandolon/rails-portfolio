class DownloadMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.download_mailer.welcome.subject
  #
  def welcome(download)
    @user = download
    # attachments['ab_technical_cv.pdf'] = File.read('../assets/images/ab_technical_cv.pdf')
    mail  to: @user.email,
          bcc: "anthony@bandolon.me",
          subject: "Anthony Bandolon's CV"
  end

end
