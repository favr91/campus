class WelcomeController < ApplicationController
  before_action :authenticate_user!

  def index
    @post = Post.new
    @posts = Post.all.where(:tipo_post => 'priv').order('created_at DESC').paginate(:page => params[:page], :per_page => 12)

  end
end
