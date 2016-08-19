Rails.application.routes.draw do
  root to: "pages#home"

  get 'game', to: 'pages#game', as: 'game'

  namespace :api do
    namespace :v1 do
      resources :balls, only: [:create]
    end
  end
end
