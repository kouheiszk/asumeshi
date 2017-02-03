Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  devise_scope :user do
    delete 'sign_out', to: 'users/sessions#destroy', as: :destroy_user_session
  end

  # ユーザ
  resource :user, only: %i(show edit update)

  # ホーム
  resource :home, only: [:show], module: :statics

  # トレーニング用
  resources :trainings, only: %i(index)

  # 献立検索用
  resource :kondate, only: [:new, :create, :show]

  # 献立の履歴
  resources :kondate_histories, only: [:index, :show]

  # 初回ログイン時
  get 'boarding/step1', to: 'boardings#step1'
  post 'boarding/step1', to: 'boardings#achieve_step1'
  get 'boarding/step2', to: 'boardings#step2'
  post 'boarding/step2', to: 'boardings#achieve_step2'

  # デバッグモード
  get 'debug', to: 'debugs#show'

  root 'statics/homes#show'
end
