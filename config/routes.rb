Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get 'cars/home'
  # get 'car/new' ,to: "car#new"
  # post 'car/create' ,to: "car#create"
   resources :cars
end
