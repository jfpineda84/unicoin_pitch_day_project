class User < ApplicationRecord
  has_secure_password
  has_many :user_responses


    has_attached_file :image_upload

     # Validate content type
     validates_attachment_content_type :image_upload, :content_type => /\Aimage/

     # Validate filename
     validates_attachment_file_name :image_upload, :matches => [/png\Z/, /jpe?g\Z/]
end
