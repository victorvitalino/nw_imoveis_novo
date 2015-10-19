require_dependency 'admin/application_controller'
module Admin
  class PropertyImagesController < ApplicationController 
    before_action :set_property

    def index
      @property_image = @property.property_images.new
    end

    private

    def set_property
      @property = Property.find(params[:property_id])
    end
  end
end