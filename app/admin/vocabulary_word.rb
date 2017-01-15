ActiveAdmin.register VocabularyWord do
  permit_params :vocabulary_list_id, :word

  menu parent: "Vocabulary", priority: 1

  controller do
    def scoped_collection
      super.includes :vocabulary_list
    end
  end

  index do
     selectable_column
     id_column
     column :word
     column :vocabulary_list, sortable: 'vocabulary_lists.name'
     column :created_at
     column :updated_at
     actions
   end

end
