class Company < ActiveRecord::Base
  # == Validations
  validates :name, presence: true

  # == Associations
  has_many :products
end
