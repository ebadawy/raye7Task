Rails.application.routes.draw do
	resources :users, only: :create
	with_options only: [:index, :create] do |list_only|
		list_only.resources :places
		list_only.resources :groups
		list_only.resources :trips
	end
	resources :trips, only: :show
	post '/trips/:id/join', to: 'trips#join'
	post '/trips/:id/leave', to: 'trips#leave'
end
