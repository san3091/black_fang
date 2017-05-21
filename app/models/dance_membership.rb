class DanceMembership < ApplicationRecord
  belongs_to :user
  belongs_to :dance
end
