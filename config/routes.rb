Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :players, only: [:new, :index, :create, :show, :destroy]

  resources :games do
    resources :scores, only: [:new, :create, :index]
  end

  root to: "pages#dashboard"
end
