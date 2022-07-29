class EntriesController < ApplicationController
  def index
   
  end

  def new
    @temp_data = Entry.new
  end
  

  def create
    @temp_data = params[:entry]
    puts "E U R E K A"

    @temp_data.each do |key, value|
          TEMP_MODEL.push(value)
    end  
    puts TEMP_MODEL[0]
    redirect_to new_user_registration_path
    
      
  end

end

