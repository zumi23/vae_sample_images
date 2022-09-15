class StaticPagesController < ApplicationController
  def home
    if logged_in?
      @micropost  = current_user.microposts.build
      @feed_items = current_user.feed.page(params[:page]).per(10)
    end
  end

  def help
  end

  def about
  end

  def contact
  end

  def color
    @colors = Color.all
  end
end
