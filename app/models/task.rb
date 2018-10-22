class Task < ActiveRecord::Base
  validates :titulo, presence: true
  

end
