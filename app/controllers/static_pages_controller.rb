class StaticPagesController < ApplicationController
  skip_before_action :check_logined

  def home
  end
end
