class CreateSelleraccounts < ActiveRecord::Migration[5.1]
  def change
    create_table :selleraccounts do |t|
      t.references :seller, foreign_key: true
      t.string :bank
      t.text :address
      t.string :account
      t.string :swift
      t.string :other

      t.timestamps
    end
  end
end
