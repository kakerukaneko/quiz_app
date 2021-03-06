class Quiz < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :genre
  
  validates :content,  presence: true, length: { maximum: 140 }
  validates :answer1,  presence: true, length: { maximum: 20 }
  validates :answer2,  presence: true, length: { maximum: 20 }
  validates :answer3,  presence: true, length: { maximum: 20 }
  validates :answer4,  presence: true, length: { maximum: 20 }
  validates :quiz_comment,  presence: true, length: { maximum: 140 }
end