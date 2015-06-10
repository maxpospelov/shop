class Product < ActiveRecord::Base
  has_many :visit_products, dependent: :destroy
  has_many :line_items, dependent: :destroy
  has_many :orders, through: :line_items

  belongs_to :brand
  belongs_to  :catalog

  validates :name, presence: true, uniqueness: true
  validates :price, numericality: {greater_than_or_equal_to: 0.01}

  mount_uploader :image, ProductUploader
  validate :name, presence: true, uniqueness: {case_sensitive: false }
end
