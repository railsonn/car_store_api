Rails.application.routes.draw do
  # Esta em ordem a forma como o usuario ira interagir com a api, desde a criacao do usuario, login e depois acesso aos recursos
  post 'users/create', to: 'user#create' # rota para criar usuario
  post '/login', to: 'auth#login' # rota para fazer login e obter token
  get "auth/login" # rota para exibir formulario de login --- IGNORE ---
  get "users", to: 'user#index' # rota para listar usuarios 
  namespace :api do
    namespace :v1 do
      resources :brands, only: [:index, :create, :show, :update, :destroy]
      resources :cars, only: [:index, :show, :create, :update, :destroy]
    end
  end



  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
