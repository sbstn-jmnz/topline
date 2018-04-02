class Product < ApplicationRecord
  belongs_to :category
  has_many :quotationdetails
  has_many :quotations, through: :quotationdetails

end
