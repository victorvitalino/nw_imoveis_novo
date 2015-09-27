require_dependency 'site/application_controller'
module Site
  class PropertiesController < ApplicationController
    def index
    end

    def detail_type
      redirect_to '/404' unless Property.type_properties.keys.include?(params[:detail_type])
      
    end
  end
end