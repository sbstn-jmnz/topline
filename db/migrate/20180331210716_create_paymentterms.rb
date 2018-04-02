class CreatePaymentterms < ActiveRecord::Migration[5.1]
  def change
    create_table :paymentterms do |t|
      t.string :clause
      t.string :conditions

      t.timestamps
    end
  end
end
