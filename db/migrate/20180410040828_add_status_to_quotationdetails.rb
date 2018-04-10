class AddStatusToQuotationdetails < ActiveRecord::Migration[5.1]
  def change
    add_column :quotationdetails, :status, :boolean
  end
end
