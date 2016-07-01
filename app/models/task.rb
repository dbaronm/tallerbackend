class Task < ActiveRecord::Base
	validates :title, presence: true
	belongs_to :list
	scope :task_end, -> { where(completed: true) }
	scope :task_end, -> { where(completed: false) }
end
