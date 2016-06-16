Rails.application.routes.draw do
  get 'users/new'

  get 'users/create'

  resources :topics do
      resources :posts, except: [:index]
  end

  resources :users, only: [:new, :create]

  get 'about' => 'welcome#about'

  root 'welcome#index'
end
