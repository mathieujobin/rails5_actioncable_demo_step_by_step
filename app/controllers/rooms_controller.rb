class RoomsController < ApplicationController
  def show
    @room = Room.find!(params[:id])
    @messages = @room.messages
  end

  def welcome
    @rooms = Room.all
  end

  def create
    @room = Room.find_or_initialize_by(name: params[:subject])
    @room.save!
    #redirect_to action: 'show', id: @room
    @messages = @room.messages
    render action: :show
  end
end
