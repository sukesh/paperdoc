# == Schema Information
# Schema version: 20110531202925
#
# Table name: activity_participants
#
#  id          :integer         not null, primary key
#  activity_id :integer
#  user_id     :integer
#  type        :string(255)
#  time        :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

class ActivityParticipant < ActiveRecord::Base
  # Since, an 'activityparticipant' is a user & 
  # an 'activityparticipant' belongs to an 'activity'.
  belongs_to :user
  belongs_to :activity
end
