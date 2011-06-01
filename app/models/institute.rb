# == Schema Information
# Schema version: 20110531202925
#
# Table name: institutes
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  details    :text
#  user_id    :integer
#  emblem     :string(255)
#  created_at :datetime
#  updated_at :datetime
#  email      :string(255)
#

class Institute < ActiveRecord::Base
  # since each institute is associated with 'user' who is the institute-admin
  belongs_to :user
  
  # since an institute can have many members & 
  # destroy all institute members if the institute is destroyed
  has_many :institute_members, :dependent => :destroy
  
  # An 'institute' can have multiple 'activities'.
  has_many :activities
end
