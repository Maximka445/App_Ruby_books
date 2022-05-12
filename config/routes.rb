Rails.application.routes.draw do
  root "pages#index"
  resources :authors
  resources :books

  resources :authors do
    resources :books
  end
end
