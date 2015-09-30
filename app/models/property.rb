class Property < ActiveRecord::Base
  belongs_to :property_attribute, class_name: "Attribute"
  
  belongs_to :client
  belongs_to :project

  belongs_to :construction_companies, class_name: "Client"
  belongs_to :sellers, class_name: "Client"

  scope :active, ->              {where(status: true)}
  scope :property_attributes, -> { Attribute.where(id: self.property_attribute_id) }
  
  scope :rent_all,            -> {active.where(type_property: 0)}
  scope :release_all,         -> {active.where(type_property: 1)}
  scope :sell_all,            -> {active.where(type_property: 2)}

  scope :one_room_all,        -> {active.where(rooms: 1)}
  scope :two_room_all,        -> {active.where(rooms: 2)}
  scope :three_room_all,      -> {active.where(rooms: 3)}
  scope :four_room_all,       -> {active.where(rooms: 4)}

  scope :coverage_all,        -> {active.where(coverage: true)}
  scope :rooms_shops,         -> {active.where(commercial: true)}

  enum situation:     ['breve_lançamento', 'na_planta', 'em_construção', 'pronto']
  enum type_property: ['aluguel', 'lançamento','venda']

  validates :image_path, presence: true 
  
  mount_uploaders :image_path, ImageUploader

  attr_accessor :detail_nav, :check_boxes

  enum detail_nav: ['um-quarto', 'dois-quartos', 'tres-quartos','quatro-quartos', 'cobertura','salas-e-lojas']

  validates :situation, presence: true
  validates :name, presence: true
  validates :client, :project, presence: true 
  
  def code
    "#{'%06d' % self.id}"
  end

end
