class User < ApplicationRecord
  has_secure_password
  validates :password, length: { minimum: 6 }, on: :create
  validates :username, presence: true, uniqueness: true

  has_many :messages, dependent: :destroy
  has_many :topics, through: :messages
end
