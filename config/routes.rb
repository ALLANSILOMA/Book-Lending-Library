Rails.application.routes.draw do
  get "dashboard", to: "dashboard#index"

  # Health check route
  get "up" => "rails/health#show", as: :rails_health_check

  # Set the root path (only one root allowed)
  root "books#index"

  # Book routes with nested borrowings
  resources :books do
    resources :borrowings, only: [:create]

    # Custom routes for borrowing and returning books
    member do
      patch 'borrow', to: 'books#borrow'
      patch 'return', to: 'books#return'
    end
  end

  # Borrowing routes
  resources :borrowings, only: [:update, :destroy]
  get 'borrower_history', to: 'borrowings#borrower_history'

  # Route to return a specific borrowing
  patch 'borrowings/:id/return', to: 'borrowings#return', as: "return_borrowing"

  # Route to view a specific borrower's borrowing history
  resources :borrowers, only: [:show]
  resources :borrowings, only: [:update]

end
