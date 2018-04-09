class AddAttributesFromDeductions < ActiveRecord::Migration[5.1]
  def change
    add_column :deductions, :alarm, :decimal, precision: 20, scale: 3
    add_column :deductions, :freight, :decimal, precision: 20, scale: 3
    add_column :deductions, :overcharge, :decimal, precision: 20, scale: 3
    add_column :deductions, :interest, :decimal, precision: 20, scale: 3
  end
end
