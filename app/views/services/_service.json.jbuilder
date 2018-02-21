json.extract! service, :id, :title, :description, :price_per_month, :active, :created_at, :updated_at
json.url service_url(service, format: :json)
