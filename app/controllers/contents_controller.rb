class ContentsController < ApplicationController
  def index
  end
  
  def create
    session[:genre] = Genre.all
    @quiz = Quiz.new
  end
end