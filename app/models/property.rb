class Property < ActiveRecord::Base
  belongs_to :property_attribute, class_name: "Attribute"
  belongs_to :client
  belongs_to :project

  scope :rent_all,      -> {where(type_property: 0)}
  scope :release_all,   -> {where(type_property: 1)}
  scope :sell_all,      -> {where(type_property: 2)}

  scope :one_room_all,    -> { where(rooms: 1)}
  scope :two_room_all,    -> { where(rooms: 2)}
  scope :three_room_all,  -> { where(rooms: 3)}
  scope :four_room_all,   -> { where(rooms: 4)}

  scope :coverage_all,    -> { where(coverage: true)}
  scope :rooms_shops,     -> { where(commercial: true)}

  enum situation: ['breve_lançamento', 'na_planta', 'em_construção', 'pronto']
  enum type_property: ['aluguel', 'lançamento','venda']

  attr_accessor :detail_nav, :check_boxes

  enum detail_nav: ['um-quarto', 'dois-quartos',
                    'tres-quartos','quatro-quartos',
                    'cobertura','salas-e-lojas']

  validates :situation, presence: true
  validates_presence_of :name

  def code
    "#{'%06d' % self.id}"
  end

end
