# Define routes for the Transactions controller
Rails.application.routes.draw do
  # Define a route for the index action of the Transactions controller
  resources :transactions, only: [:index]
  
  # Set the root route to the index action of the Transactions controller
  root 'transactions#index'
end
