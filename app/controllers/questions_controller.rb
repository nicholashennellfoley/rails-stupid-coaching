# frozen_string_literal: true

# This file defines the QuestionsController, which handles requests for the "ask" and "answer" actions
class QuestionsController < ApplicationController
  def ask; end

  def answer
    @question = params[:question]

    @answer = "I don't care, get dressed and go to work!"
    @answer = 'Great!' if @question == 'I am going to work'
    @answer = 'Silly question, get dressed and go to work!' if @question.end_with?('?')
  end
end
