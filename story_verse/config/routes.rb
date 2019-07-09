Rails.application.routes.draw do
  resources :users
  resources :books
  resources :chapters
  resources :stories
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "/login", to: "auth#new", as: "login"
    # Getting the Login Form

    post "/auth", to: "auth#create"
    # Getting the information from the user (via the form)

    delete "/auth", to: "auth#destroy"
    # Loggin Out

end
