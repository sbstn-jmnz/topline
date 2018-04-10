class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.string :proforma
      t.references :quotation, foreign_key: true
      t.references :quotationdetail, foreign_key: true
      t.references :variant, foreign_key: true
      t.string :totalorder

      t.timestamps
    end
  end
end
