class RoomsController < ApplicationController
before_action :set_room, only: %i[show]
  def index
    @rooms = Room.all
  end

  def show

  end

  def new
    @room = Room.new
  end
  
  private

  def set_room
    @room = Room.find(params[:id])
  end

  def room_params
    params.require(:room).permit(:name, :capacity)
  end
end
