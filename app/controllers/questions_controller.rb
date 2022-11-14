class QuestionsController < ApplicationController
  def ask
    # @question = params[:question]
  end

  def answer
    @question = params[:question]
    if @question == 'i am going to work right now!'
      @answer = 'great!'
    elsif @question.ends_with?('?')
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
