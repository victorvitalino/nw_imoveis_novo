class PropertyImage < ActiveRecord::Base
  belongs_to :property

  mount_uploader :image_path, ImageUploader
end
