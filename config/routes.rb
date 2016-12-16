Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resource :home, only: [:show], module: :statics
  resources :trainings, only: [:index]
  resource :search, only: [:show]

  root 'statics/homes#show'
end
