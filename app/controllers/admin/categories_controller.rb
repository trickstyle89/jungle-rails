class Admin::CategoriesController < ApplicationController
    http_basic_authenticate_with name: "Jungle", password: "book"

    def index
        @products = Category.order(id: :desc).all
      end
    
      def new
        @product = Category.new
      end
    
      def create
        @product = Category.new(product_params)
    
        if @category.save
          redirect_to [:admin, :categories], notice: 'Category created!'
        else
          render :new
        end
      end
    
    
    def show
      @category = Category.find(params[:id])
      @products = @category.products.order(created_at: :desc)
    end
  
  end
  