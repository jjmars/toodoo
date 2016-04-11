class Guest < ActiveRecord::Base
  has_many :tasks, as: :owner
end
