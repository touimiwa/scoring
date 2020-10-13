class Foot < ApplicationRecord
  has_many :foots
  has_many_attached :images

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :ascore
  belongs_to_active_hash :bscore

  # validates :image, presence: true
end
