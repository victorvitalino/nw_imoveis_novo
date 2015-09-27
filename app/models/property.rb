class Property < ActiveRecord::Base
  belongs_to :property_attribute, class_name: "Attribute"
  belongs_to :client
  belongs_to :project

  enum situation: ['breve_lançamento', 'na_planta', 'em_construção', 'pronto']
  enum type_property: ['aluguel', 'lançamento','venda']

  attr_accessor :detail_nav, :check_boxes

  enum detail_nav: ['um-quarto', 'dois-quartos',
                    'tres-quartos','quatro-quartos',
                    'cobertura','salas-e-lojas']

  validates :situation, presence: true
  validates_presence_of :name
end
