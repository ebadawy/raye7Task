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
	has_many :users
end
