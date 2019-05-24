Rails.application.routes.draw do
  resources :accounts
  get 'admin/dashboard'

  get 'admin/stats'

  get 'admin/financials'

  get 'admin/settings'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'categories/show'

  patch 'posts/:id', to: 'posts#update'
  resources :posts, only: %i[index show new create edit update]
  resources :categories
end
