# Preview all emails at http://localhost:3000/rails/mailers/download_mailer
class DownloadMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/download_mailer/welcome
  def welcome
    DownloadMailer.welcome
  end

end
