class Product < ApplicationRecord
  has_many :reservations, dependent: :destroy
  has_many :users, through: :reservations
end
