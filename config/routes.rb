Gram::Application.routes.draw do
  resources :grams, :only => [:index, :show]

  root :to => 'grams#index'
end
