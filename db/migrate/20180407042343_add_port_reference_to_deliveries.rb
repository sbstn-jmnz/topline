class AddPortReferenceToDeliveries < ActiveRecord::Migration[5.1]
  def change
    add_reference :deliveries, :port, foreign_key: true
  end
end
