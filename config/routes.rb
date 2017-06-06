Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users, except: :destroy do
    resources :sessions, only: :create
    resources :memberships, only: [:create, :destroy]
  end

  resources :channels, only: [:index, :show, :new, :create] do
    resources :messages, only: [:index, :create]
  end

  root to: 'channels#index'
end
