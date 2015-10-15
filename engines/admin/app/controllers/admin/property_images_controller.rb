require_dependency 'admin/application_controller'
module Admin
  class PropertyImagesController < ApplicationController 
    before_action :set_property

    def index
      @property_images = @property.property_images
    end

    def new
    end

    def create
    end

    def destroy
      @image = @property.property_images.find(params[:id])
      @image.destroy
      redirect_to property_property_images_path(@property)
    end
    
    private

    def set_property
      @property = Property.find(params[:property_id])
    end
  end
end