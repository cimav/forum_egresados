Rails.application.routes.draw do
  mount Thredded::Engine => '/forum'

  root to: 'thredded/messageboards#index'

  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }  

  get '/users/:id' => 'profiles#show'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
