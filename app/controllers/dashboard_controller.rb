class DashboardController < ApplicationController
  
    before_action :authenticate_user!

  layout 'dashboard'
  def index
    @blogs = Blog.all.order(id: :desc)
  end

end
