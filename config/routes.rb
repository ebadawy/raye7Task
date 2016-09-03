Rails.application.routes.draw do
	resources :users, only: :create
	resources :places, only: [:index, :create]
end
