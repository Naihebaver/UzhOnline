class CategoriesController < ApplicationController
before_action :authenticate_user!
before_action :set_category, only:[:show]

  def index
  	@categories = Category.all
  end

  def show
  	@posts = Post.where(category_id: @category.id)
  end


private
	

  def set_category
    @category = Category.find(params[:id])
  end

end