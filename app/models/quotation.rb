class Quotation < ApplicationRecord
  belongs_to :season
  belongs_to :supplier
  belongs_to :handler
  belongs_to :seller
  belongs_to :client
  belongs_to :paymentterm
  has_many :quotationdetails
  has_many :products, through: :quotationdetails

end
