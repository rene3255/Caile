class ApplicationController < ActionController::Base
   
   
       
    def add_event_to_event_model
        if user_signed_in?

            @save_event = Event.new
            @save_event.title = TEMP_MODEL[0]
            @save_event.description = TEMP_MODEL[1]
            @save_event.event_date = TEMP_MODEL[2]
            @save_event.event_time = TEMP_MODEL[3]
            @save_event.user_id = current_user.id
            
            if @save_event.save
                TEMP_MODEL.each do |event|
                    puts "F I E L D S #{event}"
    
                end
                TEMP_MODEL.clear
                redirect_to root_path
            end
        else
            TEMP_MODEL.clear
            redirect_to root_path      
        end
    
  end                            
 


end 