class RoomsController < ApplicationController

  def index
    @rooms = Room.order('id ASC').limit(30)
  end
end
