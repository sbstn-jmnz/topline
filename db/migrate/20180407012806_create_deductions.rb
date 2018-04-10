class CreateDeductions < ActiveRecord::Migration[5.1]
  def change
    create_table :deductions do |t|
      t.references :client, foreign_key: true
      t.decimal :alarm, precision: 20, scale: 3
      t.decimal :freight, precision: 20, scale: 3
      t.decimal :overcharge, precision: 20, scale: 3
      t.decimal :interest, precision: 20, scale: 3

      t.timestamps
    end
  end
end
