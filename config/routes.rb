Rails.application.routes.draw do
  get "contacts" => "contacts#index"
  get "contacts/new" => "contacts#new"
  post "contacts" => "contacts#create"
  get "contacts/:id" => "contacts#show"
  get "contacts/:id/edit" => "contacts#edit"
  patch "contacts/:id" => "contacts#update"
  delete "contacts/:id" => "contacts#destroy"
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"
  namespace :api do
    get "contacts" => "contacts#index"
    get "contacts/:id" => "contacts#show"
    post "contacts" => "contacts#create"
    patch "contacts/:id" => "contacts#update"
    delete "contacts/:id" => "contacts#destroy"

    post "/users" => "users#create"
    post "/sessions" => "sessions#create"
  end
end 



