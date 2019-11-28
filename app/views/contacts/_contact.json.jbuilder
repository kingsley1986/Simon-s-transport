json.extract! contact, :id, :address, :email, :name, :phone, :created_at, :updated_at
json.url contact_url(contact, format: :json)
