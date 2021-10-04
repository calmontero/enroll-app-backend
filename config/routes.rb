Rails.application.routes.draw do
  resources :schedules
  resources :enroll_studies
  resources :programs
  #resources :people

  resources :users, only: [:show] do
    # nested resource for profiles
    resources :people, only: [:show, :index, :create, :destroy, :update]
  end

  post "/signup", to: "users#create"
  get "/me", to: "users#show"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
