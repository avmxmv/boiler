# frozen_string_literal: true

Rails.application.routes.draw do
  resource :session, only: %i[new create destroy]

  resources :users, only: %i[new create edit update]
  # если нужны не все методы то пишем , only: %i[index new edit create update destroy show]
  resources :questions do
    resources :answers, except: %i[new show]
  end

  namespace :admin do
    resources :users, only: %i[index create]
  end

  root 'pages#index'
end
