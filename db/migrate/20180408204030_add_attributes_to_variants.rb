class AddAttributesToVariants < ActiveRecord::Migration[5.1]
  def change
    add_column :variants, :quantity, :decimal
    add_reference :variants, :size, foreign_key: true
    add_column :variants, :ratio, :integer
  end
end
