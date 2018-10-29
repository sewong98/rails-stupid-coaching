class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    if @question == 'I am going to work'
      @answer = 'Great!'
    elsif @question.to_s.include? '?'
      @answer = 'Silly question, get dressed and go to work!'
    elsif @question.present?
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
