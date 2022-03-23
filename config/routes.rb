Rails.application.routes.draw do
  resources :questions # если нужны не все методы то пишем , only: %i[index new edit create update destroy show]

  root 'pages#index'
end
