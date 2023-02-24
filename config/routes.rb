Rails.application.routes.draw do
  get 'gallery/purchase_complete'
  get 'gallery/index'
  post 'gallery/index'
  post 'gallery/search'
  get 'gallery/checkout'
  post 'gallery/checkout'
  resources :line_items
  resources :carts
  #resources :stores
  resources :stores do
    member do
      delete :delete_file
    end
  end
  get 'admin/login'
  post 'admin/login'
  get 'admin/logout'
  post 'admin/login'
  get 'home/index'
  devise_for :users
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
