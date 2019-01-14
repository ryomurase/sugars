class CommentsController < ApplicationController

 def create
@comment = Comment.create(comment_params)
    redirect_to "/products/#{@comment.product.id}"   #コメントと結びつくツイートの詳細画面に遷移する
  end

  private
  def comment_params
    params.require(:comment).permit(:text).merge(product_id: params[:product_id],user_id: current_user.id)
  end

end
