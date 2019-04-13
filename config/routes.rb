Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :lead, only: [:index, :show, :postRequest]
    end
  end
end
