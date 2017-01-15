class CreateReplacements < ActiveRecord::Migration[5.0]
  def change
    create_table :replacements do |t|
      t.string :name
      t.text :words_to_find
      t.text :words_to_substitute
      t.timestamps
    end
  end
end
