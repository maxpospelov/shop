class Product < ActiveRecord::Base
  has_many :visit_products
  mount_uploader :image, ProductUploader
end
