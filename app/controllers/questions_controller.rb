class QuestionsController < ApplicationController
  def ask
    params[:question]
  end

  def answer
    @user_ask = ask
    if @user_ask == 'I am going to work!'
      @answer = 'Great!'
    elsif @user_ask.end_with?('?')
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
