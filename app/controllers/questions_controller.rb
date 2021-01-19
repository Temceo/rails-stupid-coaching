class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @question = params[:answer]

    if@question.downcase == ""
      @answer = "i am going to work right now!"
    elsif @question.end_with?("?")
      @answer = "Silly question, get dressed and go to work!"
    elsif @question != ""
      @answer = "I can feel your motivation!".upcase
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
