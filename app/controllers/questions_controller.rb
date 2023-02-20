class QuestionsController < ApplicationController
  def ask; end

  def answer
    @question = params[:question]

    if @question.downcase == 'hello'
      @answer = 'Hello!'
    elsif @question.downcase == 'what time is it?'
      @answer = Time.now
    else
      @answer = 'No answer'
    end
  end

end
