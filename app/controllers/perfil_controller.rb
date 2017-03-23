class PerfilController < ApplicationController
  def index
       @post = Post.new
       @posts = current_user.posts.all.order('created_at DESC').paginate(:page => params[:page], :per_page => 7)
  end

end
