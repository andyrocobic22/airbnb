class RoomsController < ApplicationController

  def index
    @rooms = Room.order('id ASC').limit(8)
  end

  def show
    @room = Room.find(params[:id])
  end
end
