Rails.application.routes.draw do
  get 'stores/new'

  get 'products/new'

  devise_for :users

  root "pages#home"
  get "/home", to: "pages#home"
  get "/help", to: "pages#help"
  get "/about", to: "pages#about"
  get "/contact", to: "pages#contact"
  get "/pricing", to: "pages#pricing"
  get "/delivery", to: "pages#delivery"

  resources :users, only: :show
  resources :products

end
