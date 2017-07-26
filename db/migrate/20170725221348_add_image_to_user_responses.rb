class AddImageToUserResponses < ActiveRecord::Migration[5.1]
  def self.up
    add_attachment :user_responses, :file_upload
  end

  def self.down
    remove_attachment :user_responses, :file_upload
  end
end
