class Activity < ActiveRecord::Base
  # Since an 'activity' can have multiple 'uploadedfiles'
  has_many :uploadedfiles
  
  # An 'activity' belongs to an 'activity-admin' in the 'user' table.
  belongs_to :user
  
  # Any activity belongs to an institute.
  belongs_to :institute
  
  # Since, an 'activity' can have multiple 'updates'
  has_many :updates
  
  # Since, an 'activity' can have many activity_participants.
  has_many :activity_participants
end
