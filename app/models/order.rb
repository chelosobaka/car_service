class Order < ApplicationRecord
  has_many :order_services, dependent: :destroy
  has_many :services, through: :order_services

  scope :filter_by_customer_name, -> (customer_name) {where customer_name: customer_name}
  scope :filter_by_created_at, -> (created_at) {where("DATE(created_at) = ?", created_at)}
  scope :filter_by_service_employee, -> (employee_id) {joins(:services).joins(:employees).where( services: {employees: {id: employee_id}})}
  scope :filter_by_service_category, -> (category_id) {joins(:services).where( services: {category: category_id})}

  def total_price
    self.services.sum(:price)
  end

  validates :customer_name, presence: true
end
