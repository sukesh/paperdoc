class Uploadedfile < ActiveRecord::Base
  # An 'uploadedfile' belongs to a user and can also belong to an activity.
  belongs_to :user
  belongs_to :activity
end
