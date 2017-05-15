class CommentController < ApplicationController
  def index
    @allPost = Post.all.reverse
  end
  
  def write
    new_post = Post.new
    new_post.name = params[:inputName]
    new_post.title = params[:inputTitle]
    new_post.postContent = params[:inputPostContent]
    
    new_post.save
    redirect_to :back
    
  end
  
  def update
    @onePost = Post.find(params[:id])
    @onePost.name = params[:inputName]
    @onePost.title = params[:inputTitle]
    @onePost.postContent = params[:inputPostContent]
    
    @onePost.save
    redirect_to '/'
  end
  
  def update_view
    @onePost = Post.find(params[:id])
  end
  def destroy
    @onePost = Post.find(params[:id])
    @onePost.destroy
    
    redirect_to '/'
  end
  def reply_write
    new_reply = Reply.new
    new_reply.editor = params[:inputEditor]
    new_reply.content = params[:inputContent]
    new_reply.post_id = params[:reply_id]

    new_reply.save
    
    redirect_to :back
  end
  def reply_destroy
    @oneReply = Reply.find(params[:id])
    @oneReply.destroy
    
    redirect_to :back
  end
end
