class Quotationdetail < ApplicationRecord
  belongs_to :quotation
  belongs_to :brand
  belongs_to :product
  belongs_to :color
  belongs_to :size
  has_many :orders
end
