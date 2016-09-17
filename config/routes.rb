Rails.application.routes.draw do

  match 'auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
  match 'auth/failure', to: redirect('/'), via: [:get, :post]
  match 'signout', to: 'sessions#destroy', as: 'signout', via: [:get, :post]

  devise_for :users
  
  resources :todo_lists do
    resources :todo_items do
      member do
        patch :complete
      end
    end
  end

  root "pages#index"
end
