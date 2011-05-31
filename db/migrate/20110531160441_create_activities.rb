class CreateActivities < ActiveRecord::Migration
  def self.up
    create_table :activities do |t|
      t.string :name
      t.string :type
      t.integer :user_id
      t.integer :institute_id
      t.text :details
      t.string :image_url

      t.timestamps
    end
  end

  def self.down
    drop_table :activities
  end
end
