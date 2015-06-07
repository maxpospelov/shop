class Product < ActiveRecord::Base
  has_many :visit_products
  belongs_to :brand
  mount_uploader :image, ProductUploader

  validate :name, presence: true, uniqueness: {case_sensitive: false }
end
