json.extract! opt_out_request, :id, :request_type, :meta_data, :name_encrypted, :street_address_encrypted, :city_encrypted, :postal_code_encrypted, :state_encrypted, :name_encrypted_iv, :street_address_encrypted_iv, :city_encrypted_iv, :postal_code_encrypted_iv, :state_encrypted_iv, :created_at, :updated_at
json.url opt_out_request_url(opt_out_request, format: :json)
