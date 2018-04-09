class CreateDeductions < ActiveRecord::Migration[5.1]
  def change
    create_table :deductions do |t|
      t.references :client, foreign_key: true
      t.decimal :alarm
      t.decimal :freight
      t.decimal :overcharge
      t.decimal :interest

      t.timestamps
    end
  end
end
