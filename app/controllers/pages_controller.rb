class PagesController < ApplicationController
  before_action :set_kitten_url, only: [:kitten, :kittens]

  def welcome
      @header = "This is the welcome page"
  end

  def about
      @header = "This is about page"
  end

  def contest
     flash[:notice] = "Sorry, the contest has ended"
  @header = "This is the contest page"
  redirect_to "/welcome"
end

def kitten
  set_kitten_url
end

def kittens
  set_kitten_url
end

def set_kitten_url
  requested_size = params[:size]
  @kitten_url = "http://lorempixel.com/#{requested_size}/#{requested_size}/cats"
end

def secrets
  print params[:magic_word]
  if params[:magic_word] == 'love'
    redirect_to "/secrets"
  end
end
end
