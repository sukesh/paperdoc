class AddAttachmentNameToUploadedfiles < ActiveRecord::Migration
  def self.up
    add_column :uploadedfiles, :name_file_name, :string
    add_column :uploadedfiles, :name_content_type, :string
    add_column :uploadedfiles, :name_file_size, :integer
    add_column :uploadedfiles, :name_updated_at, :datetime
  end

  def self.down
    remove_column :uploadedfiles, :name_file_name
    remove_column :uploadedfiles, :name_content_type
    remove_column :uploadedfiles, :name_file_size
    remove_column :uploadedfiles, :name_updated_at
  end
end
