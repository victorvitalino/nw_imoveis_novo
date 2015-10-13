class Client < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  enum type_client: ['pessoa_jurídica', 'pessoa_física']
  mount_uploader :logo_path, ImageUploader

  has_many :properties
  has_many :projects

  def email_required?
    false
  end

  def email_changed?
    false
  end

  
  def code
    "#{'%06d' % self.id}"
  end

end
