class Banner < ActiveRecord::Base
    enum location: ['home', 'lista', 'single']
    mount_uploader :image_path, ImageUploader
end
