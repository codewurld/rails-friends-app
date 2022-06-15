Rails.application.routes.draw do
  
   # this automatically creates our different routes from our Devise User Mgmt operation
  devise_for :users
  # this automatically creates our different routes from our 'Scaffold' operation
  # To see these routes in terminal --> rails routes
  resources :friends
  # get 'home/index'

  get 'home/about'

  # this is gotten from 'Home' view and index method within Home controller -- the connection is made as we autogenerated with rails g controller home index
  # root 'home#index' #changes index page to our root
  root 'friends#index' 
  # Defines the root path route ("/")
  # root "articles#index"
end
