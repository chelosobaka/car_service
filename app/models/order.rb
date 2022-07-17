class Order < ApplicationRecord
  has_many :order_services
  has_many :services, through: :category_orders

  def total_price
    self.services.sum(:price)
  end
end
