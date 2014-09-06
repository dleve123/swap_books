SwapBooks::Application.routes.draw do

  #resources :users, only: [ :create ]
  get "home/show"
  devise_for :users,
        controllers: {  omniauth_callbacks: "omniauth_callbacks" } #,
                        #confirmations: 'confirmations' }
  root to: "home#show"

end
