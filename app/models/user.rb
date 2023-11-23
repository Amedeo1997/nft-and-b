class User < ApplicationRecord

  has_many :reservations, dependent: :destroy
  has_many :products, through: :reservations
  has_many :reservations_as_host, through: :products, source: :reservations

  validates :username, presence: true, uniqueness: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
