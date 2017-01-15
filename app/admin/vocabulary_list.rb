ActiveAdmin.register VocabularyList do
  permit_params :name, :usage

  menu parent: "Vocabulary", priority: 1

end
