require_dependency 'site/application_controller'
module Site
  class PropertiesController < ApplicationController
    def index
    end

    def property_type
      redirect_to '/404' unless Property.type_properties.keys.include?(params[:property_type])
    end

    def property_detail_type
    end
  end
end