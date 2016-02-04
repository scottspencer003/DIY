class AddAttachmentAttachmentOneAttachmentTwoAttachmentThreeToProjects < ActiveRecord::Migration
  def self.up
    change_table :projects do |t|
      t.attachment :attachment_one
      t.attachment :attachment_two
      t.attachment :attachment_three
    end
  end

  def self.down
    remove_attachment :projects, :attachment_one
    remove_attachment :projects, :attachment_two
    remove_attachment :projects, :attachment_three
  end
end
