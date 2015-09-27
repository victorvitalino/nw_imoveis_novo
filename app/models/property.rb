class Property < ActiveRecord::Base
  enum situation: ['breve_lançamento', 'na_planta', 'em_construção', 'pronto']
  enum type_property: ['aluguel', 'lançamento','venda']

  attr_accessor :detail_nav

  enum detail_nav: ['um-quarto', 'dois-quartos',
                    'tres-quartos','quatro-quartos',
                    'cobertura','salas-e-lojas']
end
