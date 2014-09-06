SwapBooks::Application.routes.draw do

  get "home/show"
  devise_for :users
  root to: "home#show"

  get "users/create"

end
