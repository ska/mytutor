class PagesController < ApplicationController
  def index
    @title = "Home Page"
    # Iddu vedremo
    @announcements = Announcement.all
  end
  
  def about
    @title = "About Page"
  end
end
