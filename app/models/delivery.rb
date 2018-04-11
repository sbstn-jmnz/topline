class Delivery < ApplicationRecord
  belongs_to :order
  belongs_to :port
end
