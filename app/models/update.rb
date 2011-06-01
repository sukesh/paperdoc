# == Schema Information
# Schema version: 20110531202925
#
# Table name: updates
#
#  id          :integer         not null, primary key
#  message     :text
#  user_id     :integer
#  activity_id :integer
#  type        :string(255)
#  time        :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

class Update < ActiveRecord::Base
  # an 'update' belongs to a user and/or an activity
  belongs_to :user
  belongs_to :activity
end
