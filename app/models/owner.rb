class Owner < ApplicationRecord
  validates :nickname, presence: true, uniqueness: true
end
