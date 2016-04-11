class Task < ActiveRecord::Base
  belongs_to :owner, polymorphic: true
  
  validates_presence_of :title, :status, :owner
  validates_inclusion_of :status, in: 0..2
  
  def self.all_status
    ['To Do', 'Doing', 'Done']
  end
end
