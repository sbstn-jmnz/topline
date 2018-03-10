class RemoveStatusFromQuotation < ActiveRecord::Migration[5.1]
  def change
    remove_column :quotations, :status_boolean, :string
  end
end
