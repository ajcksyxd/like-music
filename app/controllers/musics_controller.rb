class MusicsController < ApplicationController
  before_action :authenticate_user!, only: [:new]

  def index
    @musics = Music.all.includes(:user).order('created_at DESC')
  end

  def new
    @music = Music.new
  end

  def create
    @music = Music.new(music_params)
    @music.user_id = current_user.id
    if @music.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @music = Music.find(params[:id])
  end

  private

  def music_params
    params.require(:music).permit(:title, :artist, :image, :audio, :introduction).merge(user_id: current_user.id)
  end
end
