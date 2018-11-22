class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable       
         
  validates_uniqueness_of :email, :case_sensitive => false 

  enum user_type: [:tenant, :owner]
  
  has_many :task
  has_one :vacancy
end
