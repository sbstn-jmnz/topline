class CreateDocuments < ActiveRecord::Migration[5.1]
  def change
    create_table :documents do |t|
      t.references :delivery, foreign_key: true
      t.date :docsbymail
      t.date :approvaldate
      t.string :courier
      t.date :received
      t.date :senttoclient

      t.timestamps
    end
  end
end
