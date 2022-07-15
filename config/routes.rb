Rails.application.routes.draw do
  root to: "admin/orders#index"

  namespace :admin do
    resources :employees
    resources :categories
    resources :services
    resources :orders
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
