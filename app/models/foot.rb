class Foot < ApplicationRecord
  has_many :foots
  has_many_attached :images

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :ascore
  belongs_to_active_hash :bscore

  with_options presence: true do
    validates :images
    validates :ateam
    validates :one_member
    validates :two_member
    validates :three_member
    validates :four_member
    validates :five_member
    validates :six_member
    validates :seven_member
    validates :eight_member
    validates :nine_member
    validates :ten_member
    validates :eleven_member
    validates :bteam
    validates :aone_member
    validates :atwo_member
    validates :athree_member
    validates :afour_member
    validates :afive_member
    validates :asix_member
    validates :aseven_member
    validates :aeight_member
    validates :anine_member
    validates :aten_member
    validates :aeleven_member
  end
end
