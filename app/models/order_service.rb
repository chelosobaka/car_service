class OrderService < ApplicationRecord
  belongs_to :order
  belongs_to :service
  belongs_to :employee

  validates :order, presence: true
  validates :service, presence: true
  validates :employee, presence: true
end
