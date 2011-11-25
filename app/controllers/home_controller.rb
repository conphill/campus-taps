class HomeController < ApplicationController
  def index
    @events = Event.all
    @posts = Post.recent
  end

end
