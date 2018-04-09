class RemoveAttributesFromDeductions < ActiveRecord::Migration[5.1]
  def change
    remove_column :deductions, :alarm, :decimal
    remove_column :deductions, :freight, :decimal
    remove_column :deductions, :overcharge, :decimal
    remove_column :deductions, :interest, :decimal
  end
end
