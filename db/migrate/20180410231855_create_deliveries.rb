class CreateDeliveries < ActiveRecord::Migration[5.1]
  def change
    create_table :deliveries do |t|
      t.references :order, foreign_key: true
      t.references :port, foreign_key: true
      t.string :invnumber
      t.date :invdate
      t.integer :totalinvq
      t.decimal :price
      t.decimal :totalinvamount
      t.date :eta
      t.string :bl
      t.string :docs

      t.timestamps
    end
  end
end
