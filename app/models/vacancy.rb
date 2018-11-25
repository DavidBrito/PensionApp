class Vacancy < ActiveRecord::Base
  belongs_to :room
  belongs_to :user
  
  enum status: [:unoccupied, :occupied]
end
