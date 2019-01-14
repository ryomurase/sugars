class CategoriesController < ApplicationController

def show
  @sugars = Product.where(category_id: params[:id])
end

end
