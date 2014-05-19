class AddAttachmentPictureToItems < ActiveRecord::Migration
  def self.up
    change_table :items do |t|
      t.attachment :picture
    end
  end

  def self.down
    drop_attached_file :items, :picture
  end
end
