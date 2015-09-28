class FriendshipsController < ApplicationController
  def create
    @friendship = current_squirrel.friendships.build(:friend_id => params[:friend_id])
    if @friendship.save
      redirect_to '/squirrels'
    else
      redirect_to root_url
    end
  end

  def destroy
    @friendship = current_squirrel.friendships.find(params[:id])
    @friendship.destroy
    redirect_to current_squirrel
  end
end
