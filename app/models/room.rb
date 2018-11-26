class Room < ActiveRecord::Base
  belongs_to :property
  has_many :vacancies
  
  validates :number, presence: true, numericality: { only_integer: true }
  validates :property_id, presence: true
end
