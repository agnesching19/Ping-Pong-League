Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :players, only: [:new, :index, :create, :show] do
    resources :player_games
    resources :scores
  end

  resources :games, only: [:new, :index, :create, :show, :destroy]

  root to: "pages#dashboard"
end
