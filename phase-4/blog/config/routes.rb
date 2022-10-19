Rails.application.routes.draw do
  resources :articles
  get '/articles-list', to: 'articles#index', as: :articles_list

  get '/authors', to: 'authors#index'
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Defines the root path route ("/")
  # root "articles#index"
end
