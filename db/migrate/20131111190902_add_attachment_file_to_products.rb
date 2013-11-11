class AddAttachmentFileToProducts < ActiveRecord::Migration
  def self.up
    change_table :products do |t|
      t.attachment :file
    end
  end

  def self.down
    drop_attached_file :products, :file
  end
end
