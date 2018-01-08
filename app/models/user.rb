class User < ApplicationRecord
  has_many :plans
  has_secure_password
  validates :email, presence: true
end
