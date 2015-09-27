module Site
  module ApplicationHelper
      
    def logo_helper(property)

      if property.coverage || property.commercial
        if property.coverage
          '/images/cobertura-mini.png'
        else
          '/images/comercial.png'
        end
      else
        case property.rooms
        when 1
          '/images/um-quarto.png' 
        when 2
          '/images/dois-quartos.png'
        when 3
          '/images/tres-quartos.png'
        when 4
          '/images/quatro-quartos.png'
        end
     end
    end
  end
end
