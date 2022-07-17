class Service < ApplicationRecord
  belongs_to :category
  has_many :order_services
  has_many :orders, through: :order_services
  belongs_to :employee

end
