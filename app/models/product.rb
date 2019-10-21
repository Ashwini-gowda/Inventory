class Product < ApplicationRecord
  mount_uploader :image, ImageUploader
  belongs_to :stock
  has_many :orders
  accepts_nested_attributes_for :orders, allow_destroy: true
  accepts_nested_attributes_for :stock, allow_destroy: true
  validates :name, :code, :image, :description, :price, presence: true 

end
