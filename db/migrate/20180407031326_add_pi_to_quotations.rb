class AddPiToQuotations < ActiveRecord::Migration[5.1]
  def change
    add_column :quotations, :pi, :string
  end
end
