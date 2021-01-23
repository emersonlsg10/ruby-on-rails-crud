Rails.application.routes.draw do
  root "builds#index"

  get "/builds", to: "builds#index"
  get "/builds/:id", to: "builds#show"
end
