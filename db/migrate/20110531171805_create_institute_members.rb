class CreateInstituteMembers < ActiveRecord::Migration
  def self.up
    create_table :institute_members do |t|
      t.integer :institute_id
      t.integer :user_id
      t.string :official_identification
      t.string :time

      t.timestamps
    end
  end

  def self.down
    drop_table :institute_members
  end
end
