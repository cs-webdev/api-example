Rails.application.routes.draw do
  root to: 'posts#index'

  resources :posts, only: [:index]

  namespace :api, constraints: { format: :json } do
    namespace :v1 do
      resources :posts, only: [:index]
    end
  end
end
