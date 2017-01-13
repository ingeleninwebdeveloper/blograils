Rails.application.routes.draw do


	get 'posts', to: 'posts#index'

	get 'posts/new', to: 'posts#new', as: 'new_post'

	post '/posts', to: 'posts#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
