class CreateQuotationDetails < ActiveRecord::Migration[5.1]
  def change
    create_table :quotation_details do |t|
      t.string :product
      t.decimal :target_price
      t.integer :quantity
      t.string :color
      t.string :size
      t.integer :ratio
      t.date :delivery_date
      t.string :status
      t.string :incoterm
      t.decimal :final_price
      t.references :quotation, foreign_key: true

      t.timestamps
    end
  end
end
