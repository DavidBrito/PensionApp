class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable       
  
  has_many :phone_number
  has_many :task
  has_one :vacancy
 
  validates_uniqueness_of :email, :case_sensitive => false 
  
  enum user_type: [:tenant, :owner]
  
  accepts_nested_attributes_for :phone_number

end
