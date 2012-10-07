Gram::Application.routes.draw do
  resources :grams, :only => [:index, :show]
  resources :search, :only => [:create]
  root :to => 'grams#index'
end
