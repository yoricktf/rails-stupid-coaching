class AnswersController < ApplicationController
  def answer
    @correct_answer = 'I am going to work'
    @response_question = 'Silly question, get dressed and go to work!'
    @response_statment = "I don't care, get dressed and go to work!"
    @response_positive = 'great!'
    @question = params[:question]
    @answer = if @question == @correct_answer
                @response_positive
              elsif @question.include? '?'
                @response_question
              else
                @response_statment
              end
  end
end
