class WelcomeController < ApplicationController
  def index
  	@articles = Article.all.paginate(page: params[:page], per_page: 1)
  	@article = Article.last
  	@article_by_month = Article.all.group_by { |post| post.created_at.strftime("%B") }
  end
end
