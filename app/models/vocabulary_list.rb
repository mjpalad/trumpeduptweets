class VocabularyList < ApplicationRecord
  has_many :vocabulary_words, dependent: :destroy
end
