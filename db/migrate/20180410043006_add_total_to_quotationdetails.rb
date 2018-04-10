class AddTotalToQuotationdetails < ActiveRecord::Migration[5.1]
  def change
    add_column :quotationdetails, :total, :decimal
  end
end
