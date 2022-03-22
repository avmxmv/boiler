Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get '/questions', to: 'questions#index' # localhost/question HTTP GET
  # Defines the root path route ("/")
  # root "articles#index"
  root 'pages#index'

end
