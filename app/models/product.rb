class Product < ApplicationRecord
  monetize :price_cents, numericality: true
  mount_uploader :image, ProductImageUploader

  belongs_to :category

  validates :name, presence: true
  validates :price, presence: true, numericality: { greater_than: 0, less_than: 1000000000 }
  validates :quantity, presence: true
  validates :category, presence: true
end
