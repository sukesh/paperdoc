# == Schema Information
# Schema version: 20110531202925
#
# Table name: activities
#
#  id           :integer         not null, primary key
#  name         :string(255)
#  type         :string(255)
#  user_id      :integer
#  institute_id :integer
#  details      :text
#  image_url    :string(255)
#  created_at   :datetime
#  updated_at   :datetime
#

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
