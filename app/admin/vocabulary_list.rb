ActiveAdmin.register VocabularyList do
  permit_params :name, :usage

  menu parent: "Vocabulary", priority: 1

  index do
    selectable_column
    id_column
    column :name
    column "Words" do |vlist|
      link_to "View Words", :controller => "vocabulary_words", :action => "index", 'q[vocabulary_list_id_eq]' => "#{vlist.id}".html_safe
    end
    actions
end

end
