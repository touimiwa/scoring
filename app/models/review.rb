class Review < ApplicationRecord
  belongs_to :user
  belongs_to :foot

  validates :score, presence: true
end
