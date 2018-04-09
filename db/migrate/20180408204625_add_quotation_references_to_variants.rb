class AddQuotationReferencesToVariants < ActiveRecord::Migration[5.1]
  def change
    add_reference :variants, :quotation, foreign_key: true
  end
end
