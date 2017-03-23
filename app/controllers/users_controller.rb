class UsersController < ApplicationController
#before_filter :authenticate_user!

  def show
    @user = User.find(params[:id])
    @post = Post.new
    @posts = @user.posts.all.order('created_at DESC').paginate(:page => params[:page], :per_page => 7)
    @knowledges = @user.knowledges.all
    end
  end

