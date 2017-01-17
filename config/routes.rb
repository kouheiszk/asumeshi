Rails.application.routes.draw do

  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  devise_scope :user do
    delete 'sign_out', to: 'users/sessions#destroy', as: :destroy_user_session
  end

  resources :users, only: %i(show edit update)

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resource :home, only: [:show], module: :statics
  resources :trainings, only: [:index]
  resource :search, only: [:show]

  root 'statics/homes#show'
end
