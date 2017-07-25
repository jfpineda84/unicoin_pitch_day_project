class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  # # This method associates the attribute ":image" with a file attachment
  # has_attached_file :image, styles: {
  #   thumb: '100x100>',
  # }
  # # Validate the attached image is image/jpg, image/png, etc
  # validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

end
