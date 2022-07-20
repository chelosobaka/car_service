class Service < ApplicationRecord
  belongs_to :category
  has_many :order_services, dependent: :destroy
  has_many :orders, through: :order_services
  belongs_to :employee, optional: true

  validates :name, presence: true, uniqueness: {scope: :category_id}
  validates :price, numericality: { only_integer: false, greater_than_or_equal_to: 0 }
end
