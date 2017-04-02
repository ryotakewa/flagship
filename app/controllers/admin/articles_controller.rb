class Admin::ArticlesController < Admin::AdminController
  before_action :set_admin_article, only: [:show, :edit, :update, :destroy]

  def index
    @articles = Article.all
  end

  def show
  end

  def new
    @article = Article.new
  end

  def edit
  end

  def create
    @article = Article.new(admin_article_params)
    if @article.save
      redirect_to admin_article_path(@article)
    else
      render 'new'
    end
  end

  def update
    if @article.update(admin_article_params)
      redirect_to admin_article_path(@article)
    else
      render 'edit'
    end
  end

  def destroy
    @article.destroy!
    redirect_to admin_articles_url
  end

  private

  def set_admin_article
    @article = Article.find(params[:id])
  end

  def admin_article_params
    params.fetch(:article, {}).permit(
      :category_id,
      :title,
      :description,
      :text,
    )
  end
end
