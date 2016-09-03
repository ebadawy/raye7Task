class Place < ApplicationRecord
	validates :name, presence: true
	validates :longitude,
			  uniqueness: { scope: :latitude },
			  presence: true
end
