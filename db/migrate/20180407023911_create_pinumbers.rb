class CreatePinumbers < ActiveRecord::Migration[5.1]
  def change
    create_table :pinumbers do |t|
      t.string :format

      t.timestamps
    end
  end
end
