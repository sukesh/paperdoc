class ActivityParticipant < ActiveRecord::Base
  # Since, an 'activityparticipant' is a user & 
  # an 'activityparticipant' belongs to an 'activity'.
  belongs_to :user
  belongs_to :activity
end
