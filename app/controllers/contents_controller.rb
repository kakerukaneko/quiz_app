class ContentsController < ApplicationController
  before_action :set_question
  before_action :set_genres
  
  def index
  end
  
  def answer
    @answer = params[:answer]
    @quiz_id = params[:quiz_id]
    @quiz = Quiz.find_by(id: @quiz_id)
    if @quiz.answer1 == @answer
      flash[:notice] = "正解です"
    else
      flash[:notice] = "不正解です"
    end
    @quiz_comment = @quiz.quiz_comment
  end
  
  def kekka
  end
  
  def create
     @quiz = Quiz.new
     @genre = Genre.all
  end
  
  def created
    @quiz = Quiz.new(question_params)
  
    if params[:content_picture]
      @quiz.content_picture = "#{@quiz.id}.contentjpg"
      image = params[:content_picture]
      File.binwrite("public/content_images/#{@quiz.content_picture}", image.read)
    end
    if @quiz.save
      flash[:notice] = "問題を投稿しました"
      redirect_to("/")
    else
      render("contents/create")
    end
  end
  
  def set_question
    if session[:user_id]
      @quiz = Quiz.all.order("RANDOM()").limit(1)
    #else
     # @quiz = Quiz.order("RANDOM()").limit(1)
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