class Commission < ApplicationRecord
  belongs_to :delivery
  belongs_to :deduction
end
