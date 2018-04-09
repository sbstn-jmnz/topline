class RemoveQuotationReferencesToVariants < ActiveRecord::Migration[5.1]
  def change
    remove_reference :variants, :quotation, foreign_key: true
  end
end
