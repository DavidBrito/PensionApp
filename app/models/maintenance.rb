class Maintenance < ActiveRecord::Base
  belongs_to :user


  validates :title, presence: true
  validates :description, presence: true
   
  enum status: [:open, :in_progress, :closed]
  
end
