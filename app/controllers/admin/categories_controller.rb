class Admin::CategoriesController < ApplicationController
    http_basic_authenticate_with name: "Jungle", password: "book"

    def index
        @categories = Category.order(id: :desc).all
      end
    
      def new
        @categories = Category.new
      end
    
      def create
        @category = Category.new(category_params)
    
        if @category.save
          redirect_to [:admin, :categories], notice: 'Category created!'
        else
          render :new
        end
      end
    
      private

def category_params
  params.require(:category).permit(:name)
end
    
    def show
      @category = Category.find(params[:id])
      @products = Category.joins(:products).group(:id).select('categories.*, COUNT(products.id) as product_count')
    end
  
  end
  