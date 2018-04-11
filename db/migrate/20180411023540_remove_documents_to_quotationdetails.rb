class RemoveDocumentsToQuotationdetails < ActiveRecord::Migration[5.1]
  def change
    remove_column :quotationdetails, :recap, :string
    remove_column :quotationdetails, :tecsheets, :string
  end
end
