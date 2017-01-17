class Ttweet < ApplicationRecord
  belongs_to :timeline

  serialize :executed_rules, Array
end
