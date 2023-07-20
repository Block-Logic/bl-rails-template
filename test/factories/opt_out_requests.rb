FactoryBot.define do
  factory :opt_out_request do
    request_type { 1 }
    meta_data { "" }
    name_encrypted { "MyString" }
    street_address_encrypted { "MyString" }
    city_encrypted { "MyString" }
    postal_code_encrypted { "MyString" }
    state_encrypted { "MyString" }
    name_encrypted_iv { "MyString" }
    street_address_encrypted_iv { "MyString" }
    city_encrypted_iv { "MyString" }
    postal_code_encrypted_iv { "MyString" }
    state_encrypted_iv { "MyString" }
  end
end
