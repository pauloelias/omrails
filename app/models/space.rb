class Space < ApplicationRecord
  belongs_to :user

  validates :user, presence: true
  validates :title, presence: true
  validates :desscription, presence: true, length: { maximum: 256 }

  acts_as_votable

  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
