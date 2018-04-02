class CreateQuotationdetails < ActiveRecord::Migration[5.1]
  def change
    create_table :quotationdetails do |t|
      t.references :quotation, foreign_key: true
      t.references :brand, foreign_key: true
      t.references :product, foreign_key: true
      t.references :color, foreign_key: true
      t.string :quantity
      t.references :size, foreign_key: true
      t.string :ratio
      t.date :deliverydate
      t.string :targetprice
      t.string :finalprice
      t.string :otherdetails

      t.timestamps
    end
  end
end
