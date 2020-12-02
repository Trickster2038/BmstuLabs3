class CachedResult < ApplicationRecord
  validates :input, presence: true, uniqueness: true
  validates :result, presence: true
end
