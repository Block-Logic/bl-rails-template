class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable,
         authentication_keys: [:username]

  validates :username,
            presence: true,
            uniqueness: { case_sensitive: false },
            length: { minimum: 5, maximum: 40 }
end
