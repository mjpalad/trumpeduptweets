class CreateVocabulary < ActiveRecord::Migration[5.0]
  def change

    create_table :vocabulary_lists do |t|
      t.text :name
      t.text :usage
      t.timestamps
    end

    create_table :vocabulary_words do |t|
      t.integer :vocabulary_list_id
      t.text    :word
      t.timestamps
    end

  end
end
