class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @musics = @user.musics.order('created_at DESC')
    @musics = Kaminari.paginate_array(@musics).page(params[:page]).per(6)
  end
end
