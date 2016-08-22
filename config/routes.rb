Rails.application.routes.draw do
	root "quotes#index"
	get 'new' => 'quotes#new'
	get 'index' => 'qotes#index'
	get '' => 'quotes#index'


	get 'login' => 'sessions#new'
	post 'login' => 'sessions#new'

	resources :quotes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
