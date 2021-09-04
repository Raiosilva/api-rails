Rails.application.routes.draw do
  resources :contacts
  resources :facilities
  resources :operations
  resources :customers do
    put 'operations', on: :member
    delete 'operations', on: :member
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
