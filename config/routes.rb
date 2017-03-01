Rails.application.routes.draw do
  resources :comments
  resources :posts
  resources :drinks
  # resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # Add a root route if you don't have one...
    # We can use users#new for now, or replace this with the controller and action you want to be the site root:
    root to: 'users#new'
    # sign up page with form:
    get 'users/new' => 'users#new', as: :new_user
    # create (post) action for when sign up form is submitted:
    post 'users' => 'users#create'

    # sessions
    # log in page with form:
    get '/login'     => 'sessions#new'

    # create (post) action for when log in form is submitted:
    post '/login'    => 'sessions#create'

    # delete action to log out:
    delete '/logout' => 'sessions#destroy'

end
