class PagesController < ApplicationController
  def home
    @skills = Skill.all
    @projects = Project.all
    @download = Download.new
  end
end
