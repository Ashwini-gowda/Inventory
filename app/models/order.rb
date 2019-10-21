class Order < ApplicationRecord
  belongs_to :product
  validates :product, :quantity, :address, :status, presence: true
end
