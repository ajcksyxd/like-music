class MusicsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :show]
  before_action :set_music, only: [:show, :edit, :update]

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
    @comment = Comment.new
    @comments = @music.comments.includes(:user).order('created_at DESC')
  end

  def edit
    redirect_to action: :index unless @music.user_id == current_user.id
  end

  def update
    @music.user_id = current_user.id
    if @music.update(music_params)
      redirect_to music_path
    else
      render :edit
    end
  end

  def destroy
    music = Music.find(params[:id])
    music.user_id = current_user.id
    music.destroy
    redirect_to root_path
  end

  private

  def music_params
    params.require(:music).permit(:title, :artist, :image, :audio, :introduction).merge(user_id: current_user.id)
  end

  def set_music
    @music = Music.find(params[:id])
  end
end
