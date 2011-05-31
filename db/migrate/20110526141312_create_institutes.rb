class CreateInstitutes < ActiveRecord::Migration
  def self.up
    create_table :institutes do |t|
      t.string :name
      t.text :details
      t.integer :user_id
      t.string :emblem

      t.timestamps
    end
  end

  def self.down
    drop_table :institutes
  end
end
