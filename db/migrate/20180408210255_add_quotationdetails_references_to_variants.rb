class AddQuotationdetailsReferencesToVariants < ActiveRecord::Migration[5.1]
  def change
    add_reference :variants, :quotationdetails, foreign_key: true
  end
end
