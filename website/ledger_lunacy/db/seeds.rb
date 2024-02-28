require 'json'

# Array of JSON files to seed data from
json_files = ['simple_ledger.json', 'duplicate_ledger.json', 'complicated_ledger.json']

# Iterate through each JSON file
json_files.each do |file|
  # Read JSON data from file
  json_data = File.read(file)

  # Parse JSON data into transactions
  transactions = JSON.parse(json_data)

  # Iterate through each transaction and create records in the database
  transactions.each do |transaction|
    Transaction.create!(
      activity_id: transaction['activity_id'],
      date: transaction['date'],
      transaction_type: transaction['type'],
      method: transaction['method'],
      amount: transaction['amount'],
      balance: transaction['balance'],
      requester_type: transaction['requester']['type'],
      source_type: transaction['source']['type'],
      source_id: transaction['source']['id'],
      source_description: transaction['source']['description'],
      destination_type: transaction['destination']['type'],
      destination_id: transaction['destination']['id'],
      destination_description: transaction['destination']['description']
    )
  end
end
