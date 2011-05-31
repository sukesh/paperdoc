class CreateUpdates < ActiveRecord::Migration
  def self.up
    create_table :updates do |t|
      t.text :message
      t.integer :user_id
      t.integer :activity_id
      t.string :type
      t.string :time

      t.timestamps
    end
  end

  def self.down
    drop_table :updates
  end
end
