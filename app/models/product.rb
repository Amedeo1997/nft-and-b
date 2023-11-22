class Product < ApplicationRecord
  has_many :reservations, dependent: :destroy
  has_many :users, through: :reservations
  has_one_attached :photo
  belongs_to :user
end
