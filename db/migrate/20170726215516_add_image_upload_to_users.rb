class AddImageUploadToUsers < ActiveRecord::Migration[5.1]
  def self.up
   add_attachment :users, :image_upload
 end

 def self.down
   remove_attachment :users, :image_upload
 end
end
