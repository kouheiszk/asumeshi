Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # 多言語化の設定
  scope '(:locale)', locale: /#{I18n.available_locales.join('|')}/ do

    resource :home, only: [:show], module: :statics

    resources :trainings, only: [:index] do
      collection do
        get :jp
        get :en
      end
    end

    root 'statics/homes#show'

  end
end
