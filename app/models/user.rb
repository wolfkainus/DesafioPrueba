class User < ActiveRecord::Base
  
  validates :firtname, presence: true
  validates :lastname, presence: true
  validates :username, presence:true, uniqueness: true
  validates :email, presence: true

  has_many :user_acount
  has_many :acounts, through: :user_acount

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
