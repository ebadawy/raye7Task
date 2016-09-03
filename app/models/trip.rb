class Trip < ApplicationRecord
	validates :driver, presence: true
	validates :source, presence: true
	validates :destination, presence: true
	validates :time, presence: true
	validates :seats,
			  presence: true,
			  numericality: true

	belongs_to :driver, class_name: 'User'
end
