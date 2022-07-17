class OrderService < ApplicationRecord
  belongs_to :order
  belongs_to :service
  belongs_to :employee
end
