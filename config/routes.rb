Experiencia::Application.routes.draw do

controller :sessions do
  get 'login' => :new
  post 'login' => :create
  delete 'logout' => :destroy
end

resources :orders
resources :products
resources :customers
resources :producers

root :to => 'products#index'

end
