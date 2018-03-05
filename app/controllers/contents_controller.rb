class ContentsController < ApplicationController
  #before_action :set_question
  before_action :set_genres
  
  def index
    if !session[:quiz_id]
      #ランダムでクイズキーを発行する。固有のキーになる。(問題終了後 破棄する)
      session[:quiz_id] = rand(100) + 1
    end
  end
  
  
  def set_genres
    @genre = Genre.all
    @genres = Array.new
    @i = 1 
    @genre.each do |genre|
      @genres.push(genre.name) 
    end
  end
  
  private
    def question_params
      params.require(:quiz).permit(:content, :content_picture, :answer1,:answer2,:answer3,:answer4,
                                   :genre_id,:quiz_comment,:quiz_addId)
    end
    
end