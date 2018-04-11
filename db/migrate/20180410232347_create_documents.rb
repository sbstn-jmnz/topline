class CreateDocuments < ActiveRecord::Migration[5.1]
  def change
    create_table :documents do |t|
      t.references :delivery, foreign_key: true
      t.date :docsbymail
      t.date :approvaldate
      t.string :coriername
      t.string :couriernumber
      t.date :docsreceived
      t.date :docssenttoclient

      t.timestamps
    end
  end
end
