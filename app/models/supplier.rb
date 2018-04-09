class Supplier < ApplicationRecord
  has_one :supplieraccount
  has_many :handlers

end
