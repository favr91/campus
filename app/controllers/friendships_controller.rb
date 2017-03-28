class FriendshipsController < ApplicationController

  def create
    @friendship = current_user.friendships.build(:friend_id => params[:friend_id])
      if @friendship.save
        flash[:notice] = "Has seguido a un usuario."
        redirect_to :back
      else
        flash[:error] = "No fue posible seguir a el usuario."
        redirect_to :back
      end
  end


  def destroy
    @friendship = current_user.friendships.find(params[:id])
    @friendship.destroy
    flash[:notice] = "Has seguido a un usuario."
    redirect_to :back

  end


end
