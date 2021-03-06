class User < ApplicationRecord
  has_many :quizzes
  has_many :likes
  
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  
  validates :name, presence: true, length: { maximum: 30 }
  validates :email, presence: true, uniqueness: { case_sensitive: false },
                    length: { maximum: 255 },format: { with: VALID_EMAIL_REGEX }
  validates :password, presence: true, length: { minimum: 6 },allow_nil: true
  
  before_save { self.email = email.downcase }
  
  has_secure_password
end