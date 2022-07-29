class Entry
    include ActiveModel::Validations
    include ActiveModel::Conversion
    extend ActiveModel::Naming
    
    attr_accessor :title, :description, :event_date, :event_time
   
    validates_presence_of :title
    validates_presence_of :description
    validates_presence_of :event_date
    validates_presence_of :event_time
    validates_length_of :description, :maximum => 100
    
    def initialize(attributes = {})
      attributes.each do |name, value|
        send("#{name}=", value)
      end
    end
    
    def persisted?
      false
    end
  end