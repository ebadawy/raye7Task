require 'rails_helper'

RSpec.describe User, type: :model do
	it 'is invalid without attrs' do
		user = User.new
		user.should_not be_valid
	end
end
