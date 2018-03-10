class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :brand
      t.string :style
      t.text :description
      t.text :construction
      t.text :composition
      t.string :washing
      t.string :fit
      t.string :pocket
      t.string :placket
      t.string :finish
      t.text :packing
      t.string :other
      t.text :Art
      t.references :quotation_details, foreign_key: true

      t.timestamps
    end
  end
end
