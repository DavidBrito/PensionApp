class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable       
         
  validates_uniqueness_of :email, :case_sensitive => false 

  has_many :task
end
