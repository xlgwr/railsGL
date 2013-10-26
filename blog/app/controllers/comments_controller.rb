class CommentsController < ApplicationController
<<<<<<< HEAD
=======
  def create
    @post= Post.find(params[:post_id])
    @comment=@post.comments.create(params[:comment].permit(:commenter,:body))
    redirect_to post_path(@post)
  end
>>>>>>> b8b5527a69b9ff42856755ea1345ef16f044eca5
end
