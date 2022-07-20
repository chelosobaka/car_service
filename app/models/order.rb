class Order < ApplicationRecord
  has_many :order_services, dependent: :destroy
  has_many :services, through: :order_services

  def total_price
    self.services.sum(:price)
  end

  validates :name, presence: true 
end
