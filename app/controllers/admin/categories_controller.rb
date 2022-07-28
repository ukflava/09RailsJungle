class Admin::CategoriesController < ApplicationController

  # http_basic_authenticate_with name: "aaa", password: "aaa"
  # http_basic_authenticate_with name: ENV["ADMUSR"], password: ENV["ADMPWR"]
  

    

  def index
    @categories = Category.order(id: :desc).all
  end

  def new
    @categories = Category.new
  end

  def create
    @categories = Category.new(category_params)

    if @category.save
      redirect_to [:admin, :categories], notice: 'Category created!'
    else
      render :new
    end
  end


  private

  def category_params
    params.require(:product).permit(
      :name,
      
                  
    )
  end



end
