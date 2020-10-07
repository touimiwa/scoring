Rails.application.routes.draw do
  devise_for :users
  root to: 'foots#index'
  resources :foots, only: [:index, :create,:new]
end
