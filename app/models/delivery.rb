class Delivery < ApplicationRecord
  belongs_to :orders
  has_many :commissions
end
