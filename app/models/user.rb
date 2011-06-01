# == Schema Information
# Schema version: 20110531202925
#
# Table name: users
#
#  id            :integer         not null, primary key
#  name          :string(255)
#  username      :string(255)
#  usertype      :string(255)
#  photo_url     :string(255)
#  created_at    :datetime
#  updated_at    :datetime
#  email         :string(255)
#  password_hash :string(255)
#  password_salt :string(255)
#

class User < ActiveRecord::Base

  # only used to store password temporarily 
  # { attr_accessor -> auto provides get and set }
  attr_accessor :password
  attr_accessible :name, :username, :usertype, :email, :password, 
                  :password_confirmation
                  
  email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

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
  
  # Validations:
  # Note: password stores hashed plain-text value with password_salt
  #       as the 'salt'". SHA2 for password hash.
  validates :name, :username, :password_hash, :password_salt, :usertype, :email,  
            :presence => true
  validates :username, 
            :uniqueness => true
  validates :name, 
            :length => { :maximum => 20 }
  validates :username, 
            :length => { :within => 4..15 }
  validates :password, 
            :length       => { :within => 6..40 },
            :confirmation => true
  validates :email,
            :format     => { :with => email_regex },
            :uniqueness => { :case_sensitive => false }
  
end
