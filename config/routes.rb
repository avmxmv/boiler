Rails.application.routes.draw do
  # если нужны не все методы то пишем , only: %i[index new edit create update destroy show]
  resources :questions do
    resources :answers, except: %i[new show]
  end

  root 'pages#index'
end
