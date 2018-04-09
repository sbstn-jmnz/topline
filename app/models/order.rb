class Order < ApplicationRecord
  belongs_to :quotationdetails
  has_many :deliveries
  has_many :payments
  has_many :commissions
end


#Quotationdetail.sum(:quantity).where(pi: :pi_id)
