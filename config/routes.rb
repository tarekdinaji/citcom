Rails.application.routes.draw do
  devise_for :users
  resources :complains, only: [:new, :create, :show]
  root "complains#index"
end
