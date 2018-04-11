class CreatePayments < ActiveRecord::Migration[5.1]
  def change
    create_table :payments do |t|
      t.references :order, foreign_key: true
      t.decimal :totalamount
      t.decimal :advance
      t.date :advancedate
      t.decimal :balance
      t.decimal :balancepaid
      t.date :paiddate

      t.timestamps
    end
  end
end
