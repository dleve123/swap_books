SwapBooks::Application.routes.draw do

  root 'welcomes#home'

  devise_for :users, controllers: {  omniauth_callbacks: "omniauth_callbacks" }

  resources :books do
    resources :matches
  end
end
