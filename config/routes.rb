Gram::Application.routes.draw do
  resources :grams

  root :to => 'grams#index'
end
