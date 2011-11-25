class HomeController < ApplicationController
  def index
    @title = "Campus Taps"
    @events = Event.all
    @posts = Post.recent
  end

end
