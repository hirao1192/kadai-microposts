class Micropost < ApplicationRecord
  belongs_to :user
  
  has_many :favorites, dependent: :destroy
  has_many :favoriters, through: :favorites, source: :users
  
  validates :content, presence: true, length: { maximum: 255 }
end
