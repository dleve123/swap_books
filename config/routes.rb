SwapBooks::Application.routes.draw do

  get "home/show"
  devise_for :users,
        controllers: { omniauth_callbacks: "omniauth_callbacks" }
  root to: "home#show"

  get "users/create"

end
