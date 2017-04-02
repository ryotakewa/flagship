class Admin::CategoriesController < Admin::AdminController
  before_action :set_admin_category, only: [:show, :edit, :update, :destroy]

  def index
    @parent_categories = Category.where(category_id: nil)
    @categories = Category.where.not(category_id: nil)
  end

  def show
  end

  def new
    @category = Category.new
  end

  def edit
  end

  def create
    @category = Category.new(admin_category_params)
    if @category.save
      redirect_to admin_category_path(@category)
    else
      render :new
    end
  end

  def update
    if @category.update(admin_category_params)
      redirect_to admin_category_path(@category)
    else
      render :edit
    end
  end

  def destroy
    @category.destroy
    redirect_to admin_categories_url
  end

  private

  def set_admin_category
    @category = Category.find(params[:id])
  end

  def admin_category_params
    params.fetch(:category, {}).permit(
      :category_id,
      :name,
    )
  end
end
