class Brand < ActiveRecord::Base
  has_many :products
  accepts_nested_attributes_for :products

  validate :name, presence: true, uniqueness: {case_sensitive: false }
end
