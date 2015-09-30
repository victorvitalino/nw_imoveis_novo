class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  default_scope {order('created_at DESC')}
  
  validates :username, presence: true, uniqueness: true
  validates :email, presence: true
end
