# == Schema Information
#
# Table name: events
#
#  id          :bigint           not null, primary key
#  title       :string
#  description :string
#  event_date  :date
#  event_time  :time
#  user_id     :bigint           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Event < ApplicationRecord
  validates :title, presence: true, uniqueness: true
  validates :Description, presence: true
  validates :event_date, presence: true
  validates :event_time, presence: true
  
  belongs_to :user
  has_many :invites
end
