class InstituteMember < ActiveRecord::Base
  # since each institute_member belong to an institute
  belongs_to :institute
  # since each institute_member belong to the Users schema
  belongs_to :user

end

