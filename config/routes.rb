Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :lead, only: [:index, :show]
      resources :get, only: [:index, :show]
    end
  end
end
