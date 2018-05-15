class Quiz < ApplicationRecord
  belongs_to :user
  belongs_to :genre
  
  validates :genre_id, presence: true
  validates :content,  presence: true, length: { maximum: 140 }
  validates :answer1,  presence: true, length: { maximum: 20 }
  validates :answer2,  presence: true, length: { maximum: 20 }
  validates :answer3,  presence: true, length: { maximum: 20 }
  validates :answer4,  presence: true, length: { maximum: 20 }
  validates :quiz_comment,  presence: true, length: { maximum: 140 }
end