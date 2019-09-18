class ApplicationController < ActionController::Base
  before_action :check_logined

  private

  def check_logined
    if session[:user_id]
      begin
        @usr = User.find(session[:user_id])
      rescue ActiveRecord::RecordNotFound
        reset_session
      end
    end
    unless @usr
      redirect_to admin_login_url
    end
  end

end
