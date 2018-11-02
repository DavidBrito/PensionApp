class Task < ActiveRecord::Base
  validates :title, presence: true
  validates :description, presence: true
  
  belongs_to :user
  
  
  def self.complete_task(task)
    task.update(status: 1)
  end
  
  def completed?
    self.status == 1
  end

end
