class Service < ApplicationRecord
  belongs_to :category
  has_many :order_services
  has_many :orders, through: :order_services
  has_many :employee_service
  has_many :employee, through: :employee_service

end
