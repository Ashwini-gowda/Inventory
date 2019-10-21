class Product < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  # devise :database_authenticatable, :registerable,
  #        :recoverable, :rememberable, :validatable
  mount_uploader :image, ImageUploader
  belongs_to :stock
  has_many :orders

  validates :name, :code, :image, :description, :price, presence: true 

end
