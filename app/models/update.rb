class Update < ActiveRecord::Base
  # an 'update' belongs to a user and/or an activity
  belongs_to :user
  belongs_to :activity
end
