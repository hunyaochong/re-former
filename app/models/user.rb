class User < ApplicationRecord
  validates :username, :email, :password, presence: true
  validates :username, uniqueness: true, length: { minimum: 4 }
  validates :password, length: { minimum: 8, maximum: 15 }
end
