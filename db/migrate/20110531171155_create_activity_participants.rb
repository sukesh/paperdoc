class CreateActivityParticipants < ActiveRecord::Migration
  def self.up
    create_table :activity_participants do |t|
      t.integer :activity_id
      t.integer :user_id
      t.string :type
      t.string :time

      t.timestamps
    end
  end

  def self.down
    drop_table :activity_participants
  end
end
