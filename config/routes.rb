Rails.application.routes.draw do

  devise_for :users
  root to: 'foots#index'
  resources :foots, only: [:index, :create, :new, :show] do
    resources :reviews, onry: [:index, :create, :show]
  end
end
