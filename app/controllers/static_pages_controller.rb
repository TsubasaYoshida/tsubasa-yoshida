class StaticPagesController < ApplicationController
  skip_before_action :check_logined

  def home
    @blogs = Blog.all.order(created_at: :desc)
  end

end
