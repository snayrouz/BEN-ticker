class User < ApplicationRecord
  has_secure_password

  validates :email, presence: true, format: { with: /\A.+@.+$\Z/ }, uniqueness: true
  validates :username, :phone, :password, presence: true, uniqueness: true
end
