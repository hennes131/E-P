Rails.application.routes.draw do
  root 'events#index'
  get 'singup' => "users#new"

  resource :session
  resources :users
  resources :events do
  	resources :likes 
	resources :registrations
  end

end
