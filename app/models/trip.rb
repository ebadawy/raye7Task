class Trip < ApplicationRecord
	validates :driver, presence: true
	validates :source, presence: true
	validates :destination, presence: true
	validates :time, presence: true
	validates :seats,
			  presence: true,
			  numericality: true

	belongs_to :driver, class_name: 'User'
	belongs_to :source, class_name: 'Place'
	belongs_to :destination, class_name: 'Place'
	has_and_belongs_to_many :users

	def can_join? u
		return false if self.seats < 1 or
						self.driver.group.name != u.group.name or
						self.source != u.home_place or
						self.destination != u.work_place or
						self.driver == u or
						self.users.include? u
		return true
	end

	def can_leave? u
		return true if self.users.include? u
		return false
	end

	def join u
		self.users << u
		self.seats -= 1
	end

	def leave u
		self.users.delete u
		self.seats += 1
	end
end
