class Replacement < ApplicationRecord
  serialize :words_to_find, Array
  serialize :words_to_substitute, Array

  def words_to_find_raw
    self.words_to_find.join("\n") unless self.words_to_find.nil?
  end

  def words_to_substitute_raw
    self.words_to_substitute.join("\n") unless self.words_to_substitute.nil?
  end

  def words_to_find_raw=(values)
    self.words_to_find = []
    self.words_to_find=values.split(/[\r\n]+/)
  end

  def words_to_substitute_raw=(values)
    self.words_to_substitute = []
    self.words_to_substitute=values.split(/[\r\n]+/)
  end

end
