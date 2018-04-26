class User < ApplicationRecord
  has_secure_password

  validates :username, :email, presence: true

  has_many :attendings
  has_many :movies, through: :attendings

end

# User.create(username: "Nicole", email: "email", password_digest: "12345")

# Movie.create(title: "The Big Movie", time: "2:30pm")