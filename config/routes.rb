Rails.application.routes.draw do
  resources :fitness_classes

  resources :users do 
    resources :fitness_classes
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
