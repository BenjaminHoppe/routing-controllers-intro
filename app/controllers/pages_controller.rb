class PagesController < ApplicationController

  def welcome
    @header = "Look it's the welcome page"
  end

  def about
    @header = "Oh hey, this is about us"
  end

  def contest
    @header = "Contests!"
  end

end
