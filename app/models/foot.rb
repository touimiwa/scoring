class Foot < ApplicationRecord
  belongs_to :user, optional: true
  has_many_attached :images
  has_many :reviews, dependent: :destroy

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

  def avg_score
    unless self.reviews.empty?
      reviews.average(:score).round(1).to_f
    else
      0.0
    end
  end

  def review_score_percentage
    unless self.reviews.empty?
      reviews.average(:score).round(1).to_f*100/5
    else
      0.0
    end
  end
end
