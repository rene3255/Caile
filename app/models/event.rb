class Event < ApplicationRecord
    validates :title, presence: true
    validates :Description, presence: true
    validates :event_date, presence: true
    validates :event_time, presence: true
  belongs_to :user
end
