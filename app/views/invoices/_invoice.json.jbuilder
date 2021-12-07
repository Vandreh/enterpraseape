json.extract! invoice, :id, :data, :company, :tax, :salesperson, :created_at, :updated_at
json.url invoice_url(invoice, format: :json)
