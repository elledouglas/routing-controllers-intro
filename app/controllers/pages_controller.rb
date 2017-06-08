class PagesController < ApplicationController
  before_action :set_kitten_url, only: [:kitten, :kittens]

  def welcome
      @header = "This is the welcome page"
  end

  def about
      @header = "This is about page"
  end

  def contest
  @header = "This is the contest page"
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
end
