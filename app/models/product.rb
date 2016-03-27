class Product < ActiveRecord::Base
  # == Validations
  validates :name, presence: true
  validates :price, presence: true
  validates :code, presence: true
  validates :stock, presence: true

  # == Associations
  belongs_to :company
  belongs_to :distributor
end
