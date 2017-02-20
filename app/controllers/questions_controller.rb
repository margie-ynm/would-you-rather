class QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end

  def show
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(question_params)
    if @question.save
      respond_to do |format|
        format.html {redirect_to questions_url }
        format.js
      end
      flash[:success] = "Question added!"
    else
      flash[:alert] = "Oops, something went wrong. Please try again."
      render :new
    end
  end
  def edit
    @question = Question.find(params[:id])
  end
  def update
    @question = Question.find(params[:id])
    if @question.update(question_params)
      flash[:success] = "You have edited the question"
      redirect_to questions_path
    else
      flash[:alert] = "OOOOOOPPPSSS something went wrong"
      render :edit
    end
  end
  def destroy
    @question = Question.find(params[:id])
      @question.destroy
      flash[:success] = "The question has been destroyed."
      redirect_to questions_path
  end

  private
    def question_params
      params.require(:question).permit(:title, :description, :option_a, :option_b)
  end
end
