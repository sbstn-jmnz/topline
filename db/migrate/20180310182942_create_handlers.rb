class CreateHandlers < ActiveRecord::Migration[5.1]
  def change
    create_table :handlers do |t|
      t.string :name

      t.timestamps
    end
  end
end
