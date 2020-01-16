class QuestionsController < ApplicationController

  def ask
  end


  def answer
    @question = params[:question]

    if @question != nil

      if @question == "I am going to work right now!" ||  @question == "I AM GOING TO WORK RIGHT NOW!"
        @coach = "Great - get to work!"
      elsif @question.end_with?("?")
        @coach = "Silly question, get dressed and go to work!"
      else
        @coach = "I don't care, get dressed and go to work!"
      end
    end
  end
end

  # def answer
  #   # what comes from the form (not done yet)
  #   @question = params[:question]
  #   # based on the question what does the coach answer
  #   @coach = "hi there"
