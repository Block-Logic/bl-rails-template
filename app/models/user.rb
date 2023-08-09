class User < ApplicationRecord
  
  USERNAME_REGEXP = /\A[a-zA-Z0-9.]+\z/.freeze

  # Include default devise modules. Others available are:
  # :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable,
         authentication_keys: [:username]

  validates :username,
            presence: true,
            uniqueness: { case_sensitive: false },
            length: { minimum: 5, maximum: 50 },
            format: { with: USERNAME_REGEXP, message: 'can only contain letters, numbers, and periods' }

  # For attr_encrypted:
  attr_encrypted_options.merge!(
    key: Rails.application.credentials.attribute_key,
    prefix: '',
    suffix: '_encrypted'
  )
  attr_encrypted :email

  before_save :create_email_hash

  # This method is required from somewhere deep in Rails. I think it will tell
  # ActiveRecord to not save the email attribute. Test are red without this
  # method.
  def will_save_change_to_email?
    false
  end

  def create_email_hash
    self.email_hash = Digest::SHA256.hexdigest(email)
  end

  def self.search_by_email_hash(email)
    where(email_hash: Digest::SHA256.hexdigest(email)).first
  end
end
