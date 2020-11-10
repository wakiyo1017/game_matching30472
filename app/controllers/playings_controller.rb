class PlayingsController < ApplicationController
  def index
    @playings = Playing.order("created_at DESC")
  end
  
  def new
    @playing = Playing.new
  end

  def create
    @playing = Playing.create(playing_params)
    if @playing.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @playing = Playing.find(params[:id])
  end

  private
  def playing_params
    params.require(:playing).permit([:title],[:rule],[:play_day]).merge(user_id: current_user.id )
  end
end
