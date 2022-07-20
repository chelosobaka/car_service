Rails.application.routes.draw do
  resources :order_services
  root to: "admin/orders#index"

  namespace :admin do
    resources :employees
    resources :categories
    resources :services
    resources :orders

    resources :order_services, except: [:index, :show]
    resources :employee_services, only: [:create, :destroy]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
