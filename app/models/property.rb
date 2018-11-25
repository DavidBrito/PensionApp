class Property < ActiveRecord::Base
  belongs_to :proprietary, class_name: 'User'
  has_and_belongs_to_many :employees
 
  validates :name, presence: true
  validates :postal_code, presence: true, 
                          format: { with: /\A[+-]?\d+\z/ }, 
                          length: { is: 8 }
  validates :address, presence: true
  validates :number, presence: true, numericality: { only_integer: true }
  validates :city, presence: true
  validates :state, presence: true

end
