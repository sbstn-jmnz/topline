class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.references :quotationdetails, foreign_key: true
      t.boolean :shipped

      t.timestamps
    end
  end
end
