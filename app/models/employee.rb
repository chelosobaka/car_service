class Employee < ApplicationRecord
  has_many :order_services
  has_many :services, through: :order_services

  validates :name, presence: true
end
