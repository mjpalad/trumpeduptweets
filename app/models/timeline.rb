class Timeline < ApplicationRecord
  has_many :ttweets, dependent: :destroy
end
