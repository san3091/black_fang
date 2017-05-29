class Dance < ApplicationRecord
  has_many :videos
  has_many :dance_memberships
  has_many :users, through: :dance_memberships

  validates_presence_of :title
end
