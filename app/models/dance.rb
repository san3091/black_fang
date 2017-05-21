class Dance < ApplicationRecord
  has_many :videos
  has_many :dance_memberships
  has_many :users, through: :dance_memberships
end
