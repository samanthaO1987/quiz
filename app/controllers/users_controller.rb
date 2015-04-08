class UsersController < ApplicationController

  def index
    reset_session
    @user  = User.new
    @users = User.with_score.ordered
  end

  def create
    @user = User.create!(name: params[:user][:name])
    set_sessions(@user)
    redirect_to question_path(Question.first)
  end

  def score
    @user = User.find(session[:user_id])
    @user.update_column(:score, @user.calculate_score)
    @total_time = calculate_session_time
  end

  private

  def calculate_session_time
    diff_in_seconds = session[:stopped].to_time - session[:started].to_time
    elapsed_time = Time.at(diff_in_seconds).utc.strftime("%H:%M:%S")
  end

  def set_sessions(user)
    session[:user_id] = user.id
    session[:started] = Time.now
  end
end
