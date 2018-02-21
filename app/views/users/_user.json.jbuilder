json.extract! user, :id, :user_level, :first_name, :last_name, :email, :phone_number, :street_name, :street_number, :post_code, :created_at, :updated_at
json.url user_url(user, format: :json)
