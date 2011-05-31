class User < ActiveRecord::Base
  # Note: we allow a member to belong to one or more institutes.
  # Hence, a 'user' can be part of one or more institute_member.
  # Deleting a 'user' should remove the entry from institute_member.
  has_many :institute_members, :dependent => :destroy
  
  # Each institute has one 'user' who acts as institute-admin
  # therefore, there cannot be an institute-admin incharge of two institutes.
  has_one :institute
  
  # Since, any 'user' can have multiple 'uploadedfiles'.
  has_many :uploadedfiles
  
  # Since, multiple 'users' can be 'activity-admins' of multiple activities.
  has_many :activities
  
  # Since, any 'user' can have multiple 'updates'
  has_many :updates
  
  # Since, a 'user' can be part of multiple activity_participant.
  has_many :activity_participants
end
