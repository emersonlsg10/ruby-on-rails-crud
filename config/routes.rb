Rails.application.routes.draw do
  root "builds#index"

  resources :builds
end
