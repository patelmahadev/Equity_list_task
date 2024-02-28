module TransactionsHelper
  def find_unique_transaction(transaction)
    Transaction.find_by(activity_id: transaction.activity_id)
  end
end
