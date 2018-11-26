class Room < ActiveRecord::Base
  belongs_to :property
  has_many :rooms
end
