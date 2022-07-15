class CreateOrderServices < ActiveRecord::Migration[6.1]
  def change
    create_table :order_services do |t|
      t.references :order, null: false, foreign_key: true
      t.references :service, null: false, foreign_key: true

      t.timestamps
    end
  end
end
