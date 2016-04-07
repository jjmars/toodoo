class Task < ActiveRecord::Base
  belongs_to :user
  
  before_validation :set_deadline
  
  validates_presence_of :title, :deadline, :status
  validates_inclusion_of :status, in: 0..2
  
  def set_deadline
    self.deadline = Date.now if self.deadline.blank?
  end
  
  def self.all_status
    ['To Do', 'Doing', 'Done']
  end
end
