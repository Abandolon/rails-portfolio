class DownloadsController < ApplicationController

  def new
    @download = Download.new
  end

  def create
    @download = Download.new(download_params)
    if @download.save
      DownloadMailer.welcome(@download).deliver_now
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def download_params
    params.require(:download).permit(:name, :company, :email)
  end
end
