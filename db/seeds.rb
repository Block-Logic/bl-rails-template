# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

if Rails.env.development?
  admin = User.find_or_create_by(username: 'admin') do |admin|
    admin.email = 'admin@fmadata.com'
    admin.is_admin = true
    admin.password = 'password'
    admin.password_confirmation = 'password'
  end
  admin.confirm

  OptOutRequest.create(
    name: 'John Doe',
    request_type: 'opt_out',
    street_address: '4845 Pearl East Cir Ste 118, PMB 417163',
    city: 'Boulder',
    postal_code: '80301',
    state: 'CO'
  )
end

