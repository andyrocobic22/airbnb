class RoomsController < ApplicationController

  def index
    @rooms = Room.order('id ASC').limit(20)
  end
end
