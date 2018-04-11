class CreateCommissions < ActiveRecord::Migration[5.1]
  def change
    create_table :commissions do |t|
      t.references :delivery, foreign_key: true
      t.references :deduction, foreign_key: true
      t.decimal :com
      t.decimal :totalcom

      t.timestamps
    end
  end
end
