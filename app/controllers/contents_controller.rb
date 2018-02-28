class ContentsController < ApplicationController
  
  def index
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
  
  private
    def question_params
      params.require(:quiz).permit(:content, :content_picture, :answer1,:answer2,:answer3,:answer4,
                                   :genre_id,:quiz_comment,:quiz_addId)
    end
end