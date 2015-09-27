require_dependency 'site/application_controller'
module Site
  class PropertiesController < ApplicationController
    def index
    end
    
    def show
    end
    
    def property_type
      redirect_to '/404' unless Property.type_properties.keys.include?(params[:property_type])
    end

    def property_detail_type

      case params[:property_detail_type]
      when 'aluguel'
        @properties = Property.rent_all
      when 'lançamento'
        @properties = Property.release_all
      when 'venda'
        @properties = Property.sell_all
      else
      end

      case params[:detail_type]
      when 'um-quarto'
        @properties.one_room_all
      when 'dois-quartos'
        @properties.two_room_all
      when 'tres-quartos'
        @properties.three_room_all
      when 'quatro-quartos'
        @properties.four_room_all
      else
      end
    end
  end
end