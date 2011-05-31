class CreateUploadedfiles < ActiveRecord::Migration
  def self.up
    create_table :uploadedfiles do |t|
      t.string :name
      t.integer :user_id
      t.integer :activity_id
      t.string :time
      t.string :permission

      t.timestamps
    end
  end

  def self.down
    drop_table :uploadedfiles
  end
end
