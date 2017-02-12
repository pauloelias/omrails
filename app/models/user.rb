class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :rememberable, :trackable, :validatable #:recoverable,

  has_many :tweets
  has_many :spaces

  validates :username, presence: true, uniqueness: true, length: { minimum: 5 }
  validates :name, presence: true

  acts_as_followable
  acts_as_follower

  acts_as_voter
end
