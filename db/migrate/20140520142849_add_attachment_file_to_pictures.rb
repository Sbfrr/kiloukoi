class AddAttachmentFileToPictures < ActiveRecord::Migration
  def self.up
    change_table :pictures do |t|
      t.attachment :file
    end
  end

  def self.down
    drop_attached_file :pictures, :file
  end
end
