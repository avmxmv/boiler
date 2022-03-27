Rails.application.routes.draw do
  # если нужны не все методы то пишем , only: %i[index new edit create update destroy show]
  resources :questions do
    resources :answers, only: %i[create destroy]
  end

  root 'pages#index'
end
