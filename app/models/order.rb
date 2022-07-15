class Order < ApplicationRecord
  has_many :order_services
  has_many :services, through: :category_orders

end
