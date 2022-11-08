Rails.application.routes.draw do
  root services#index
  
  get "/services", to: "services#index"
  get "/services/:name", to: "services#show"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
