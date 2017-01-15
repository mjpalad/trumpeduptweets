ActiveAdmin.register VocabularyWord do
  permit_params :vocabulary_list_id, :word

  menu parent: "Vocabulary", priority: 1

end
