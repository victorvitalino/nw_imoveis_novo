class Project < ActiveRecord::Base
  belongs_to :client

  validates_presence_of :client, :name, :description, :image_path

  mount_uploader :image_path, ImageUploader
end
