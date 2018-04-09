class Deduction < ApplicationRecord
  belongs_to :client
  has_many :deductions
end
