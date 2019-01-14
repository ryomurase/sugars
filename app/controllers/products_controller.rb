class ProductsController < ApplicationController

def index
  @sugars = Product.all
end

def new
  @product=Product.new
  @categories=Category.all
end

def create
  Product.create(product_params)
end

def destroy
      product = Product.find(params[:id])
      # if product.user_id == current_user.id
      product.destroy
      # end
    end

def edit
 @product = Product.find(params[:id])
end

def update
      product = Product.find(params[:id])
      # if product.user_id == current_user.id
        product.update(product_params)
      # end
end

def show
 @product = Product.find(params[:id])
 @comments = @product.comments.includes(:user)
 @comment = Comment.new
end


private
def product_params
      params.require(:product).permit(:name, :avatar, :detail, :company, :material, :preservation, :quantity, :category_id).merge(user_id: current_user.id)
end





end
