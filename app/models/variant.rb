class Variant < ApplicationRecord
  belongs_to :quotation_detail, inverse_of: :variant
end
