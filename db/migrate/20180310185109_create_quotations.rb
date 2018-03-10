class CreateQuotations < ActiveRecord::Migration[5.1]
  def change
    create_table :quotations do |t|
      t.integer :quotation_n
      t.references :supplier, foreign_key: true
      t.references :client, foreign_key: true
      t.references :seller, foreign_key: true
      t.references :handler, foreign_key: true
      t.string :status_boolean

      t.timestamps
    end
  end
end
