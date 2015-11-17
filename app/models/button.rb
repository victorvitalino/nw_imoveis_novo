class Button < ActiveRecord::Base
  enum code:  ['principal', 'lançamento','aluguel', 'venda']
  enum order: [*'1'..'14']

  scope :principal,  -> {where(status: true, code: 0)}

  mount_uploader :image_path, ImageUploader

  validates :order, uniqueness: {scope: :code }
  validates :image_path, presence: true

  def self.per_type(type)

    case type
    when 'lançamento'
      where(code: 1)
    when 'aluguel'
      where(code: 2)
    when 'venda'
      where(code: 3)
    else
    end
  end

end
