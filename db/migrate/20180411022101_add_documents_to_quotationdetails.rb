class AddDocumentsToQuotationdetails < ActiveRecord::Migration[5.1]
  def change
    add_column :quotationdetails, :recap, :string
    add_column :quotationdetails, :tecsheets, :string
  end
end
