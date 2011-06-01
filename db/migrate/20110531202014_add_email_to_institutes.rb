class AddEmailToInstitutes < ActiveRecord::Migration
  def self.up
    add_column :institutes, :email, :string
  end

  def self.down
    remove_column :institutes, :email
  end
end
