Experiencia::Application.routes.draw do

resources :sessions, only: [:new, :create, :destroy]

resources :orders
resources :products
resources :users

match '/signup',  to: 'users#new'

match "show_producers" => "users#show_producers"
match '/signin',  to: 'sessions#new'
match '/signout', to: 'sessions#destroy', via: :delete

root :to => 'products#index'

end
