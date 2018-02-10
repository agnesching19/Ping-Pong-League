Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :players, only: [:new, :index, :create, :show, :destroy]
  resources :scores, only: [:new, :create, :index]
  resources :games

  root to: "pages#dashboard"
end
