class AddStatusToQuotationDetails < ActiveRecord::Migration[5.1]
  def change
    add_column :quotation_details, :status, :boolean
  end
end
