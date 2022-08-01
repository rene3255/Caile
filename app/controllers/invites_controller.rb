class InvitesController < ApplicationController
    before_action :set_find_event, only: [:edit, :show, :update, :destroy]
  
  
  def index
    @invites = Invite.select('invites.id, invites.firts_name, invites.last_name, events.title, events.user_id')
    .joins(:event).where("user_id = #{current_user.id}")
  end

  def new
    @invite= Invite.new

    @events = Event.find_by_sql("select id, title from events where user_id  = #{ current_user.id} ")

    @result_set = Array.new(@events.length) { Array.new(2) }

    @events.length.times do |row|
        @result_set[row][0] = @events[row].title
        @result_set[row][1] = @events[row].id 
       
    end
  
  end

  def create
    @invite = Invite.create event_params
    redirect_to invites_path  
  end


  private

  def event_params
    params.require(:invite).permit(:firts_name, :last_name, :invitee, :event_id)
  end

  def set_find_event
    @event = Invite.find(params[:id])
    
  end  

end
