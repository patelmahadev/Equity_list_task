class TransactionsController < ApplicationController
  # Controller action to retrieve and display distinct transactions
  def index
    # Retrieve distinct transactions ordered by date in ascending order
    @transactions = Transaction.select(:activity_id).distinct.order(date: :asc)
  end
end
