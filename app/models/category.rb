class Category < ApplicationRecord
  has_many :services, dependent: :destroy

  validates :name, uniqueness: true, presence: true

end
