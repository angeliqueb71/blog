class User < ApplicationRecord
  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy


  validates :email, length: {minimum: 4, maximum: 30}
  validates :fname, length: {minimum: 4, maximum: 30}
  validates :lname, length: {minimum: 4, maximum: 30}
  validates :password, length: {minimum: 4, maximum: 30}
  validates :username, length: {minimum: 4, maximum: 30}

  validates :terms, acceptance: true
  validates :email, confirmation: true
  validates :password, confirmation: true
  validates :email, uniqueness: true

end
