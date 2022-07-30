class HomeController < ApplicationController
  def index
     if TEMP_MODEL.length > 0
        add_event_to_event_model
     end   
  end

  def about
  end
end
