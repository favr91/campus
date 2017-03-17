class PerfilController < ApplicationController
  def index
       @post = Post.new
       @posts = current_user.posts.order('created_at DESC').paginate(:page => params[:page], :per_page => 7)
  end

 private
  def set_user
    @user = current_user
  end

end
