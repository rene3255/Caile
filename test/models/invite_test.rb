# == Schema Information
#
# Table name: invites
#
#  id         :bigint           not null, primary key
#  firts_name :string
#  last_name  :string
#  invitee    :boolean          default(TRUE)
#  event_id   :bigint           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require "test_helper"

class InviteTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
