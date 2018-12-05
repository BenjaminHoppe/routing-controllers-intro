class PagesController < ApplicationController

  def welcome
    @header = "Look it's the welcome page"
  end

  def about
    @header = "Oh hey, this is about us"
  end

  def contest
    flash[:notice] = "Sorry, the contest is over"
    redirect_to '/welcome'
  end

  def kitten
      set_kitten_url
  end

  def kittens
    set_kitten_url
  end

  def set_kitten_url
    requested_size = params[:size]
    @kitten_url = "http://placekitten.com/#{requested_size}/#{requested_size}"
  end

  def secrets

       if params[:magic_word] == "escala"
           render :secrets
       else
           flash[:alert] = "Sorry, you're not authorized to see that page!"
           redirect_to "/welcome"
       end









end
