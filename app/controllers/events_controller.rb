class EventsController < ApplicationController
    before_action :set_find_event, only: [:edit, :show, :update, :destroy]
  
  def index
     @events = Event.all
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.create event_params
    redirect_to events_path  
  end

  def edit
  end

  def show
  end

  private

  def event_params
    params.require(:event).permit(:title, :description, :event_date, :event_time, :user_id)
  end

  def set_find_event
    @event = Event.find(params[:id])
    
  end  

end
