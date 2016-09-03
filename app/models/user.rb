class User < ApplicationRecord
	validates :fname, presence: true
	validates :lname, presence: true
	validates :phone_number,
			  uniqueness: true,
			  presence: true,
			  numericality: true,
			  length: {minimum: 11, maximum: 14}
	validate :validate_home_work_difference

	def validate_home_work_difference
		errors.add(:home_place, "can't be the same as work place") if home_place == work_place
	end
end
