Rails.application.routes.draw do
  root to: "pages#home"

  namespace :api do
    namespace :v1 do
      resources :balls, only: [:index]
    end
  end
end
