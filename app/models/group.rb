class Group < ApplicationRecord
	validates :name,
		      uniqueness: true,
			  presence: true

	has_many :users
end
