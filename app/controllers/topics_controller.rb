class TopicsController < ApplicationController
  before_action :set_sitebar_topics
  layout 'blog'
  def index
    @topics = Topic.all
  end

  def show
    @topic = Topic.find(params[:id])

    if logged_in?(:site_admin)
      @blogs = @topic.blogs.all.order(id: :desc).page(params[:page]).per(5)
    else
      @blogs = @topic.blogs.published.all.order(id: :desc).page(params[:page]).per(5)
    end
  end

  private

  def set_sitebar_topics
    @side_bar_topics = Topic.only_topic_that_have_blogs
  end

end
