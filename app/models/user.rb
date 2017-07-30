class User < ApplicationRecord
  # has_secure_password
  has_secure_password :validations => false
  has_many :user_responses
  # validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create
  validates_length_of :name, minimum: 2
  # validates_length_of :password, minimum: 8
  has_attached_file :image_upload

   # Validate content type
   validates_attachment_content_type :image_upload, :content_type => /\Aimage/

   # Validate filename
   validates_attachment_file_name :image_upload, :matches => [/png\Z/, /jpe?g\Z/]
end
