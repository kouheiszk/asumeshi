Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resource :home, only: [:show], module: :statics

  resources :trainings, only: [:index] do
    collection do
      get :jp
      get :en
    end
  end

  root 'statics/homes#show'
end
