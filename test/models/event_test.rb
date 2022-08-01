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
require "test_helper"

class EventTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
