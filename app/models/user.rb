class User < ApplicationRecord
  has_many :videos
  has_many :dance_memberships
  has_many :dances, through: :dance_memberships
end
