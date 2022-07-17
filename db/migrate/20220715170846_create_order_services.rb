class CreateOrderServices < ActiveRecord::Migration[6.1]
  def change
    create_table :order_services do |t|
      t.references :order
      t.references :service
      t.references :employee
      t.timestamps
    end
  end
end
