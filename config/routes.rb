Rails.application.routes.draw do
  get 'posts/new'
  get 'posts/create'
  get 'places/index'
  get 'places/show'
  get 'places/new'
  get 'places/create'

  root to: 'places#index'

  resources :places, only: [:index, :show, :new, :create] do
    resources :posts, only: [:new, :create]
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # get("/", { :controller => "articles", :action => "index" })


end
