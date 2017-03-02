Rails.application.routes.draw do


  # resources :comments
  # resources :posts
  # resources :drinks
  # resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # Add a root route if you don't have one...
    # We can use users#new for now, or replace this with the controller and action you want to be the site root:
    root to: 'users#new'
    # sign up page with form:
    get 'users/new' => 'users#new', as: :new_user
    # create (post) action for when sign up form is submitted:
    post 'users' => 'users#create'
    # get 'users/:id' => 'users#show', as: :user
    # get 'users/index' => 'users#show' as: :user
    # sessions
    # log in page with form:
    get '/login'     => 'sessions#new'
    # create (post) action for when log in form is submitted:
    post '/login'    => 'sessions#create'
    # delete action to log out:
    delete '/logout' => 'sessions#destroy'
    get 'pages/secret'

    # drinks load page

    get 'drinks/' => 'drinks#index'
    post 'drinks/' => 'drinks#create'
    get 'drinks/new' => 'drinks#new', as: :new_drink
    get 'drinks/:id' => 'drinks#show', as: :drink
    get 'drinks/:id/edit' => 'drinks#edit', as: :edit_drink
    patch 'drinks/:id' => 'drinks#update'
    delete 'drinks/:id' => 'drinks#destroy'

    get 'posts/' => 'posts#index'
    post 'posts/' => 'posts#create'
    get 'posts/new' => 'posts#new', as: :new_post
    get 'posts/:id' => 'posts#show', as: :post
    get 'posts/:id/edit' => 'posts#edit', as: :edit_post
    patch 'posts/:id' => 'posts#update'
    delete 'posts/:id' => 'posts#destroy'

    get 'comments/' => 'comments#index'
    post 'comments/' => 'comments#create'
    get 'comments/new' => 'comments#new', as: :new_comment
    get 'comments/:id' => 'comments#show', as: :comment
    get 'comments/:id/edit' => 'comments#edit', as: :edit_comment
    patch 'comments/:id' => 'comments#update'
    delete 'comments/:id' => 'comments#destroy'

end
