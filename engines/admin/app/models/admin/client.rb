class Admin::Client < ::Client
  enum type_client: [:pessoa_física, :pessoa_jurídica]
  validates :social_reason, :fantasy_name, :username, :responsible_name, presence: true
  validates :type_client, :city, :uf, :cep, :address, :email, :cadastre_email, presence: true
  validates :telephone, numericality: true, presence: true
  validates :celphone, :responsible_telephone, numericality: true, allow_blank: true
  validates :cpf,  cpf: true,   presence: true, if: :is_fisic_person?
  validates :cnpj, cnpj: true,  presence: true, if: :is_legal_person?

  private

  def is_fisic_person?
    self.pessoa_física?
  end

  def is_legal_person?
    self.pessoa_jurídica?
  end
end
