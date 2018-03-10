class Quotation < ApplicationRecord
  belongs_to :supplier
  belongs_to :client
  belongs_to :seller
  belongs_to :handler
end
