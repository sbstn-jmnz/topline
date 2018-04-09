class CreateGastos < ActiveRecord::Migration[5.1]
  def change
    create_table :gastos do |t|
      t.string :cc
      t.date :fecha
      t.string :descripcion
      t.integer :cargo
      t.integer :saldo
      t.boolean :pagado

      t.timestamps
    end
  end
end
