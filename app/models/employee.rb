class Employee < ActiveRecord::Base
  has_and_belongs_to_many :properties
  
  validates :first_name, presence: true
  validates :last_name, presence: true 
  validates :cpf, presence: true, 
                  format: { with: /\A[+-]?\d+\z/ }, 
                  length: { is: 11 }
end
