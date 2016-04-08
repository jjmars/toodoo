class Task < ActiveRecord::Base
  belongs_to :user
  
  validates_presence_of :title, :status
  validates_inclusion_of :status, in: 0..2
  
  def self.all_status
    ['To Do', 'Doing', 'Done']
  end
end
