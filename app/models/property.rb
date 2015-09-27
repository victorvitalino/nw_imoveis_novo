class Property < ActiveRecord::Base
  enum situation: ['breve_lançamento', 'na_planta', 'em_construção', 'pronto']
  enum type_property: ['aluguel', 'lançamento','venda']

  attr_accessor :detail_nav

  enum detail_nav: ['icon-um-quarto', 'icon-dois-quarto', 'icon-tres-quarto','icon-quatro-quarto', 'icon-cobertura','icon-salas-lojas']
end
