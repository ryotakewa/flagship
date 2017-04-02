class IndexController < ApplicationController

  def index
    @articles = Article.all.order(id: :desc)
  end

end
