# == Schema Information
# Schema version: 20110531202925
#
# Table name: uploadedfiles
#
#  id          :integer         not null, primary key
#  name        :string(255)
#  user_id     :integer
#  activity_id :integer
#  time        :string(255)
#  permission  :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

class Uploadedfile < ActiveRecord::Base
  # An 'uploadedfile' belongs to a user and can also belong to an activity.
  belongs_to :user
  belongs_to :activity
 
 has_attached_file:name
                  
end
