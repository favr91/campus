class PerfilController < ApplicationController
  def index
       @post = Post.new
       @posts = Post.all.order('created_at DESC').paginate(:page => params[:page], :per_page => 7)
  end

end
