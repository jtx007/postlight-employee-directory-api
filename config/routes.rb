Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do 
      resources :departments
      resources :titles
      resources :locations
      resources :employees 
      get "search", action: :search, controller: :employees
      # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
    end
  end
end