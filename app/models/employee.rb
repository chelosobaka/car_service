class Employee < ApplicationRecord
  has_many :employee_service
  has_many :services, through: :employee_service
end
