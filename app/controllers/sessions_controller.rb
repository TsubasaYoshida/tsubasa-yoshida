class SessionsController < ApplicationController
  skip_before_action :check_logined

  def new
  end

  def create
    user = User.find_by(email: session_params[:email])

    if user&.authenticate(session_params[:password])
      reset_session
      session[:user_id] = user.id
      redirect_to management_blogs_url, notice: 'ログインしました。'
    else
      flash.now[:danger] = '入力値が誤っています。'
      render :new
    end
  end

  private

  def session_params
    params.require(:session).permit(:email, :password)
  end

end
