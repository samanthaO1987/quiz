class QuestionsController < ApplicationController
  before_action :get_user
  before_action :get_question
  before_action :validate_session, unless: proc { session[:stopped] }

  def create
    @user.surveys.create!(question: @question, answer_id: params[:answer_id])

    if @question.last?
      session[:stopped] = Time.now
      redirect_to score_user_path(@user)
    else
      session[:current_question_id] = @question.next.id
      redirect_to question_path(@question.next.id)
    end
  end

  private

  def get_user
    @user = User.find(session[:user_id])
  end

  def get_question
    @question = Question.find(params[:id])
  end

  def validate_session
    current_question_id = session[:current_question_id]

    if @user.blank?
      redirect_to root_path and return
    elsif current_question_id && current_question_id != @question.id
      redirect_to question_path(current_question_id)
    end
  end
end
