class Product < ActiveRecord::Base
  has_many :visit_products, dependent: :destroy
  has_many :line_items, dependent: :destroy

  belongs_to :brand
  belongs_to  :catalog

  mount_uploader :image, ProductUploader
  validate :name, presence: true, uniqueness: {case_sensitive: false }
end
