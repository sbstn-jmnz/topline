class AddDocumentsToQuotations < ActiveRecord::Migration[5.1]
  def change
    add_column :quotations, :recap, :string
    add_column :quotations, :tecsheets, :string
  end
end
