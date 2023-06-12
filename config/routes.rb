Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get 'chirps/', to: 'chirp#index'
  post 'chirps/', to: 'chirps#create'
  get 'chirps/:id', to: 'chirps#show', as: 'chirp'
  patch 'chirps/:id', to: 'chirps#update'
  put 'chirps/:id', to: 'chirps#update'
  delete 'chirps/:id', to: 'chirps#destroy'

  #resources :chirps, except: [:new, :edit]
end

  #prefix alias 'chirp' to differentiate between routes ('chirps_url' command references both /chirps and /chirps/:id )

  #resources :chirps
  #   provides all above methods (including 'create' and 'edit') as well as all proper prefixes
  