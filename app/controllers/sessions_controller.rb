class SessionsController < ApplicationController

  def new; end

  def create
    user = User.find_by(email: params[:session][:email])
    if user&.authenticate(params[:session][:password])
      session[:user_id] = user.id
      redirect_to posts_path, notice: 'ログインしました'
    else
      flash.now[:alert] = 'ログインできませんでした'
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to new_session_path, notice: 'ログアウトしました'
  end
end