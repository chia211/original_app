class Profile < ApplicationRecord
  validates :nickname, presence: true

  belongs_to :user
  has_many :vital_signs
  has_many :memos

end
