Rails.application.routes.draw do
  resources :enroll_studies, only: [:create, :destroy]
  resources :programs

  resources :users, only: [:show] do
    # nested resource for people
    resources :people, only: [:show, :index, :create, :destroy, :update] do
      resources :enroll_studies
    end
  end

  post "/signup", to: "users#create"
  get "/me", to: "users#show"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  #post "/enroll_studies", to: "enroll_studies#create"
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
