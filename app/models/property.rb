class Property < ActiveRecord::Base
  has_many :property_images
  accepts_nested_attributes_for :property_images, allow_destroy: true
  
  belongs_to :property_attribute, class_name: "Attribute"

  belongs_to :client
  belongs_to :project

  belongs_to :construction_companies, class_name: "Client"
  belongs_to :sellers, class_name: "Client"

  scope :active, ->              {where(status: true)}

  scope :rent_all,            -> {active.where(type_property: 0)}
  scope :release_all,         -> {active.where(type_property: 1)}
  scope :sell_all,            -> {active.where(type_property: 2)}

  scope :one_room_all,        -> {active.where(rooms: 1)}
  scope :two_room_all,        -> {active.where(rooms: 2)}
  scope :three_room_all,      -> {active.where(rooms: 3)}
  scope :four_room_all,       -> {active.where(rooms: 4)}

  scope :coverage_all,        -> {active.where(coverage: true)}
  scope :rooms_shops,         -> {active.where(commercial: true)}

  enum situation:     ['nenhuma', 'breve_lançamento', 'na_planta', 'em_construção', 'pronto']
  enum type_property: ['lançamento','venda', 'aluguel']

  attr_accessor :detail_nav, :check_boxes

  enum detail_nav: ['um-quarto', 'dois-quartos', 'tres-quartos','quatro-quartos', 'cobertura','salas-e-lojas']

  validates :situation, presence: true
  validates :name, presence: true
  validates :project, presence: true


  def property_attributes; Attribute.where(id: self.property_attribute_id); end;
  def property_constructors; Client.where(id: self.construction_companies_id); end;
  def property_sellers; Client.where(id: self.sellers_id); end;

  def code
    "#{'%06d' % self.id}"
  end

end
