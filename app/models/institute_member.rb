# == Schema Information
# Schema version: 20110531202925
#
# Table name: institute_members
#
#  id                      :integer         not null, primary key
#  institute_id            :integer
#  user_id                 :integer
#  official_identification :string(255)
#  time                    :string(255)
#  created_at              :datetime
#  updated_at              :datetime
#

class InstituteMember < ActiveRecord::Base
  # since each institute_member belong to an institute
  belongs_to :institute
  # since each institute_member belong to the Users schema
  belongs_to :user

end

