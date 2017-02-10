class Space < ApplicationRecord
  belongs_to :user

  validates :user, presence: true
  validates :title, presence: true
  validates :desscription, presence: true, length: { maximum: 256 }
end
