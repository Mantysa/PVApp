Rails.application.routes.draw do
  resources :users
  resources :inverters
  resources :pv_modules

  root :to => "users#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
