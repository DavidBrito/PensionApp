class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable       
  
  has_many :phone_number
  has_many :tasks
  has_one :vacancy
  has_many :maintenances
  has_many :properties
  
  validates_uniqueness_of :email, :case_sensitive => false 
  validates_associated :properties

  enum user_type: [:tenant, :proprietary]
  
  accepts_nested_attributes_for :phone_number

end
