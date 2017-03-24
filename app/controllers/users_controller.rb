class UsersController < ApplicationController
#before_filter :authenticate_user!
  def show
    @user = User.find(params[:id])
    @post = Post.new
    @posts = @user.posts.all.order('created_at DESC').paginate(:page => params[:page], :per_page => 7)

  end

def index
  @users = User.all
  if params[:search]
    @users = User.search(params[:search]).order("created_at DESC")
  else
    @users = User.all.order('created_at DESC')
  end
end

end

