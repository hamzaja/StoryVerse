Rails.application.routes.draw do
  resources :books
  resources :chapters
  resources :stories
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
